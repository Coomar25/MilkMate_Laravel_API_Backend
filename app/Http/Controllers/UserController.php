<?php

namespace App\Http\Controllers;

use App\Http\Middleware\TokenBasedResetPassword;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\InfoUser;
use App\Models\PasswordResetToken;
use App\Models\ResetToken;
use Carbon\Carbon;
use GuzzleHttp\Psr7\Message;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Password;


use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;


class UserController extends Controller
{

    public function login(Request $request)
    {

    }

    public function logout(Request $request)
    {
    }

    public function index()
    {

    }
    public function create()
    {

    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => ['required', 'min:8', 'confirmed'],
            'password_confirmation' => ['required'],
            'address' => 'required|string|max:255',
            'contact' => 'required|string|max:20',
        ]);

        if ($validatedData) {

            // Create a new User object and save it to the users table
            $user = new User();
            $user->name = $validatedData['name'];
            $user->email = $validatedData['email'];
            // $user->password = $validatedData['password'];
            $user->password = Hash::make($validatedData['password']);
            $user->save();

            //Create token for that user
            // $token = $user->createToken($request->email)->plainTextToken;

            // Create a new NewUser object and save it to the newusers table
            $newUser = new InfoUser();
            $newUser->user_id = $user->id;
            $newUser->address = $validatedData['address'];
            $newUser->contact = $validatedData['contact'];
            $newUser->save();
            $response = [
                // 'token' => $token,
                'message' => 'User has been success fully inserted',
                200
            ];

        } else {
            $response = [
                'message' => "failed in user insertion",
                500
            ];
        }

        return ($response);


    }


    public function registerThroughMail(Request $request)
    {
        try {
            $validatedData = $request->validate([
                'email' => 'required | string | email | max:255|unique:users'
            ]);
            $userEmail = $validatedData['email'];
            if ($userEmail) {
                $resettoken = Str::random(40);
                $domain = URL::to('/');
                $url = $domain . '/' . 'api/registerMailView?resettoken=' . $resettoken;
                $data['url'] = $url;
                $data['email'] = $request->email;
                $data['title'] = 'Register Yourself By Visiting Link';
                $data['body'] = 'This Mail Works Only One Time. So Register Yourself';
                Mail::send('registerMailViewPort', ['data' => $data], function ($message) use ($data) {
                    $message->to($data['email'])->subject($data['title']);
                });
                $dateTime = Carbon::now()->format('Y-m-d H:i:s');
                ResetToken::updateOrCreate(
                    ['email' => $request->email],
                    [
                        'email' => $request->email,
                        'token' => $resettoken,
                        'created_at' => $dateTime,
                        'updated_at' => $dateTime
                    ]
                );
                return response()->json([
                    'message' => 'Check your Mail to register yourself'
                ]);

            } else {
                return response()->json([
                    'message' => "User does not exist "
                ]);

            }
        } catch (Exception $e) {
            return response()->json([
                'message' => "Failed "
            ]);
        }

    }


    public function registerMailView(Request $request)
    {
        $customToken = ResetToken::where('token', $request->resettoken)->first();
        return view('registerMailForm');

    }


    public function registerMailStore(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => ['required', 'min:8', 'confirmed'],
            'password_confirmation' => ['required'],
            'address' => 'required|string|max:255',
            'contact' => 'required|string|max:20',
        ]);

        if ($validatedData) {

            // Create a new User object and save it to the users table
            $user = new User();
            $user->name = $validatedData['name'];
            $user->email = $validatedData['email'];
            // $user->password = $validatedData['password'];
            $user->password = Hash::make($validatedData['password']);
            $user->save();


            // Create a new NewUser object and save it to the newusers table
            $newUser = new InfoUser();
            $newUser->user_id = $user->id;
            $newUser->address = $validatedData['address'];
            $newUser->contact = $validatedData['contact'];
            $newUser->save();
            //deleting token after it's being used
            ResetToken::where('email', $user->email)->delete();
            // Display JavaScript alert before redirecting
            echo '<script>alert("User Has Been Successfully Register");</script>';
            // Redirect to the desired URL
            echo '<script>window.location.href = "http://localhost:3000/login";</script>';


        } else {
            $response = [
                'message' => "failed in user insertion",
                500
            ];
        }

        return ($response);

    }


    public function forgetpassword(Request $request)
    {
        try {
            $user = User::where('email', $request->email)->get();
            if (count($user) > 0) {
                $resettoken = Str::random(40);
                $domain = URL::to('/');
                $url = $domain . '/' . 'api/reset-password?resettoken=' . $resettoken;
                $data['url'] = $url;
                $data['email'] = $request->email;
                $data['title'] = 'Reset Password';
                $data['body'] = 'Message';
                Mail::send('forgetPasswordMail', ['data' => $data], function ($message) use ($data) {
                    $message->to($data['email'])->subject($data['title']);
                });
                $dateTime = Carbon::now()->format('Y-m-d H:i:s');
                ResetToken::updateOrCreate(
                    ['email' => $request->email],
                    [
                        'email' => $request->email,
                        'token' => $resettoken,
                        'created_at' => $dateTime,
                        'updated_at' => $dateTime
                    ]
                );
                return response()->json([
                    'message' => 'Check your Mail to reset you password'
                ]);

            } else {
                return response()->json([
                    'message' => "User does not exist "
                ]);

            }

        } catch (\Exception $e) {
            return response()->json([
                'message' => "Failed "
            ]);
        }
    }



    public function resetpasswordUserInterface(Request $request)
    {
        $resetData = ResetToken::where('token', $request->resettoken)->first();
        $email = $resetData->email;
        $user = User::where('email', $email)->first();
        // // echo ($user -> id);
        $id = $user->id;
        return view('changePasswordInterface', compact('id'));
    }



    public function resetPassword(Request $request)
    {
        $validatedData = $request->validate([
            'password' => ['required', 'string', 'min:8', 'confirmed'],
            'password_confirmation' => ['required', 'string']
        ]);

        $user = User::find($request->id);
        $user->password = Hash::make($validatedData['password']);
        $user->save();
        //deleting token after it's being used
        ResetToken::where('email', $user->email)->delete();
        // Display JavaScript alert before redirecting
        echo '<script>alert("Password has been changed successfully");</script>';
        // Redirect to the desired URL
        echo '<script>window.location.href = "http://localhost:3000/login";</script>';


        // Redirect to the desired URL
        // return redirect('http://localhost:3000/login')->with('message', 'Password has been changed successfully');
    }


}











//tala ko code works as fine ad above tala siddai check garxa vane mathi row lai count garera check // Limitation exception catch gardaina

// if (User::where('email', $request->email)->exists()) {

//     $resettoken = Str::random(40);
//     // $domain = URL::to(/);
//     $domain = 'http://localhost:3000';
//     $url = $domain . '/' . 'reset-password?resettoken=' . $resettoken;


//     $data['url'] = $url;
//     $data['email'] = $request->email;
//     $data['title'] = 'Reset Password';
//     $data['body'] = 'Message';

//     Mail::send('forgetPasswordMail', ['data' => $data], function ($message) use ($data) {
//         $message->to($data['email'])->subject($data['title']);
//     });

//     $dateTime = Carbon::now()->format('Y-m-d H:i:s');

//     User::updateOrCreate(
//         ['email' => $request->email],
//         [
//             'email' => $request->email,
//             'token' => $resettoken,
//             'created_at' => $dateTime
//         ]
//     );
//     return response()->json([
//         'message' => 'Check your Mail to reset you password'
//     ]);


// } else {
//     return response()->json([
//         'message' => 'Email does not exist'
//     ]);
// }
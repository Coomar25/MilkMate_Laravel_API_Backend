<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\InfoUser;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{

    public function login(Request $request)
    {

        // $validateData = $request->validate([
        //     'email' => 'required|string|email|max:255',
        //     'password' => ['required', 'min:8'],

        // ]);

        // if ($validateData) {
        //     $user = User::where('email', $request->email)->first();
        //     if (!$user || !Hash::check($request->password, $user->password)) {
        //         return response(
        //             [
        //                 'message' => 'mis match credentials'
        //             ],
        //             404
        //         );
        //     }

        //     $token = $user->createToken($request->email)->plainTextToken;
        //     return response([
        //         'token' => $token,
        //         'message' => 'Login Successfull',
        //         'user' => $user
        //     ], 200);
        // }
    }

    public function logout(Request $request)
    {
        // $request->user()->currentAccessToken()->delete();
        // // Auth::logout();
        // return response()->json(['message' => 'Successfully logged out']);

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

    public function show(string $id)
    {
        //
    }


    public function edit(string $id)
    {
        //
    }


    public function update(Request $request, string $id)
    {
        //
    }


    public function destroy(string $id)
    {

    }
}
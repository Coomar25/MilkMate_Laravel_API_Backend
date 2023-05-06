<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\Models\InfoUser;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\JWT;
use App\Models\User;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;


class AuthController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login']]);
    }

    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login()
    {
        $credentials = request(['email', 'password', 'utype']);

        if (!$token = auth()->attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        return $this->respondWithToken($token);
    }





    // public function authforgetpassword(Request $request)
    // {
    //     if ($user = User::where('email', $request->email)->first()) {
    //         $resettoken = JWTAuth::fromUser($user);
    //         // $domain = URL::to(/);
    //         $domain = 'http://localhost:3000';
    //         $url = $domain . '/' . 'reset-password?resettoken=' . $resettoken;


    //         $data['url'] = $url;
    //         $data['email'] = $request->email;
    //         $data['title'] = 'Reset Password';
    //         $data['body'] = 'Message';

    //         Mail::send('forgetPasswordMail', ['data' => $data], function ($message) use ($data) {
    //             $message->to($data['email'])->subject($data['title']);
    //         });

    //     } else {
    //         return response()->json([
    //             'message' => 'Email does not exist'
    //         ]);
    //     }
    // }



    // public function login()
    // {
    //     $credentials = request(['email', 'password', 'utype']);
    //     if (!$token = auth()->attempt($credentials)) {
    //         return response()->json(['error' => 'Unauthorized'], 401);
    //     }
    //     if (!$user = auth()->attempt($credentials)) {
    //         return response()->json(['error' => 'Unauthorized'], 401);
    //     }
    //     $user = new User();
    //     $token = JWTAuth::fromUser($user, $user->id);

    //     return $this->respondWithToken($token);
    // }




    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function me()
    {
        return response()->json(auth()->user());
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        auth()->logout();

        return response()->json(['message' => 'Successfully logged out']);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        return $this->respondWithToken(auth()->refresh());
        // $newToken = JWTAuth::refresh();
        // return $this->respondWithToken($newToken);
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60,
            'user' => auth()->user()
        ]);
    }




}
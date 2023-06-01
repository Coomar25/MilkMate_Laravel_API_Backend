<?php

namespace App\Http\Middleware;

use App\Models\PasswordResetToken;
use App\Models\ResetToken;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class TokenBasedResetPassword
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        $token = $request->header('Authorization') ?: $request->query('resettoken');
        if (!$token) {
            return response()->json(['error' => 'Token not provided'], 401);
        }
        try {
            $resetData = ResetToken::where('token', $request->resettoken)->get();
            if (isset($request->resettoken) && count($resetData) > 0) {
                $user = ResetToken::where('email', $resetData[0]['email'])->get();
                // return response()->json([
                //     $user
                // ]);
                return $next($request);
            } else {
                return response()->json([
                    'message' => "Invalid Token Seems like you interfare with the token !"
                ]);
            }

        } catch (\Exception $ex) {
            return response()->json([
                "message" => "Error occured"
            ]);
        }



    }
}




// $resetData = DB::table('password_reset_tokens')->where('token', $request->resettoken)->get();
// if (isset($request->resettoken) && count($resetData) > 0) {
//     $user = User::where('email', $resetData[0]['email'])->get();
//     return response()->json([
//         'credentials' => $user
//     ]);
// } else {
//     return response()->json([
//         404
//     ]);
// }
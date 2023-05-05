<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Tymon\JWTAuth\Facades\JWTAuth;


class TokenMiddleware
{
    public function handle(Request $request, Closure $next): Response
    {
        $token = $request->header('Authorization') ?: $request->query('token');
        if (!$token) {
            return response()->json(['error' => 'Token not provided'], 401);
        }
        try {
            $user = JWTAuth::parseToken()->authenticate();
        } catch (\Exception $ex) {
            if ($ex instanceof \Tymon\JWTAuth\Exceptions\TokenExpiredException) {
                return response()->json(['error' => 'Token expired'], 401);
            } elseif ($ex instanceof \Tymon\JWTAuth\Exceptions\TokenInvalidException) {
                return response()->json(['error' => 'Token invalid'], 401);
            } else {
                return response()->json(['error' => 'Token absent'], 401);
            }
        }
        return $next($request);
    }
}
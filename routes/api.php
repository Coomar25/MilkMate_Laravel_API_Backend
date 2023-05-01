<?php

use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\FarmerController;
use App\Http\Controllers\ResponseController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/


//Public Route

// Route::post('/register', [UserController::class, 'store']);
// Route::post('/login', [UserController::class, 'login']);





//Private Route

// Route::middleware(['auth:sanctum'])->group(function () {
//     Route::post('/logout', [UserController::class, 'logout']);
//     ROute::get('/index', [UserController::class, 'index']);
//     Route::post('/logout', [UserController::class, 'logout']);
// });

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/



Route::post('login', [AuthController::class, 'login']);
Route::post('register', [UserController::class, 'store']);

Route::post('storeDelivery', [FarmerController::class, 'storeDelivery']);
Route::post('supplyItem', [FarmerController::class, 'supplyInventory']);
Route::post('orderRecord', [FarmerController::class, 'orderRecord']);
Route::post('earning', [FarmerController::class, 'earning']);
Route::get('test', [FarmerController::class, 'test']);
Route::get('farmer', [FarmerController::class, 'index']);



Route::group(['middleware' => 'api', 'prefix' => 'auth'], function ($router) {

    Route::post('logout', [AuthController::class, 'logout']);
    Route::post('refresh', [AuthController::class, 'refresh']);
    Route::post('me', [AuthController::class, 'me']);



});



Route::get('totalFarmers', [ResponseController::class, 'totalFarmers']);
Route::get('farmersOrderRecord', [ResponseController::class, 'farmersOrderRecord']);
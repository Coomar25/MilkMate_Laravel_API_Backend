<?php

use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\FarmerController;
use App\Http\Controllers\ResponseController;


//Private Route

// Route::middleware(['auth:sanctum'])->group(function () {
//     Route::post('/logout', [UserController::class, 'logout']);
//     ROute::get('/index', [UserController::class, 'index']);
//     Route::post('/logout', [UserController::class, 'logout']);
// });


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
Route::get('farmerTotalEarning/{user_id}', [ResponseController::class, 'farmerTotalEarning']);
Route::get('farmerDailyRecords/{user_id}', [ResponseController::class, 'farmerDailyRecords']);
<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\KhaltiController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\FarmerController;
use App\Http\Controllers\ResponseController;
use Illuminate\Support\Facades\Password;





//Public Route or Open API

Route::post('login', [AuthController::class, 'login']);
Route::post('register', [UserController::class, 'store']);
Route::get('fetchSuppyItem', [ResponseController::class, 'fetchSuppyItem']);
Route::get('farmerDeliveredStatement', [ResponseController::class, 'farmerDeliveredStatement']);
Route::get('individualFarmerOrders', [ResponseController::class, 'individualFarmerOrders']);
Route::get('farmer', [FarmerController::class, 'farmer']);
Route::post('authforgetpassword', [AuthController::class, 'authforgetpassword']);
Route::post('forgetpassword', [UserController::class, 'forgetpassword']);
Route::post('deleteInventory/{id}', [FarmerController::class, 'deleteInventory']);
Route::post('khalticheckout', [KhaltiController::class, 'verify']);


//Protected Route

// ********************************************************************************************************//
// Custom Made Change Password Middleware where i created token my self and checked whether it exist or not//
// ********************************************************************************************************//

Route::middleware(['TokenBasedResetPassword'])->group(function () {
    Route::get('reset-password', [UserController::class, 'resetpasswordUserInterface']);
    Route::post('reset-password', [UserController::class, 'resetPassword']);
    Route::get('testmiddleware', function () {
        return response()->json([
            'message' => 'you successfully enter into a middleware route'
        ]);
    });
});


// *********************************************************************************************//
// **************************************JWT In Built Middleware********************************//
// *********************************************************************************************//

Route::group(['middleware' => 'auth:api'], function () {
    // Route::get('test', [FarmerController::class, 'test']);
    Route::get('/inbuiltmiddleware', function () {
        return response()->json(['message' => "Yo Message chai middleware le token verify garera accept vayese ayeko hoo."]);
    });
});


// *********************************************************************************************//
// **************************************Custome Made Middleware********************************//
// *********************************************************************************************//

Route::middleware(['token'])->group(function () {
    //Admin Pannel Router
    Route::get('totalFarmers', [ResponseController::class, 'totalFarmers']);
    Route::post('storeDelivery', [FarmerController::class, 'storeDelivery']);

    Route::get('farmersOrderRecord', [ResponseController::class, 'farmersOrderRecord']);
    Route::post('supplyItem', [FarmerController::class, 'supplyInventory']);
    Route::post('updateInventory/{editSuppyId}', [FarmerController::class, 'updateInventory']);


    //User Pannel Router
    Route::get('farmerTotalEarning', [ResponseController::class, 'farmerTotalEarning']);
    Route::get('farmerDailyRecords', [ResponseController::class, 'farmerDailyRecords']);
    Route::post('orderRecord', [FarmerController::class, 'orderRecord']);
    Route::get('estimateFatLitrePrice', [ResponseController::class, 'estimateFatLitrePrice']);

});

// *********************************************************************************************//
// *********************************************************************************************//
// *********************************************************************************************//
//Middleware na banauda ko route haru
// Route::post('storeDelivery', [FarmerController::class, 'storeDelivery']);
// Route::post('supplyItem', [FarmerController::class, 'supplyInventory']);
// Route::post('orderRecord', [FarmerController::class, 'orderRecord']);
// Route::post('earning', [FarmerController::class, 'earning']);
// Route::get('test', [FarmerController::class, 'test']);
// Route::get('totalFarmers', [ResponseController::class, 'totalFarmers']);
// Route::get('farmersOrderRecord', [ResponseController::class, 'farmersOrderRecord']);
// Route::get('farmerTotalEarning/{user_id}', [ResponseController::class, 'farmerTotalEarning']);
// Route::get('farmerDailyRecords/{user_id}', [ResponseController::class, 'farmerDailyRecords']);
// Route::get('fetchSuppyItem', [ResponseController::class, 'fetchSuppyItem']);
//Route::get('estimateFatLitrePrice/{user_id}', [ResponseController::class, 'estimateFatLitrePrice']);
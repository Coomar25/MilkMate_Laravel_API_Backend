<?php

namespace App\Http\Controllers;

use App\Models\DeliveryRecord;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\InfoUser;
use App\Models\FarmerOrder;
use App\Models\Earning;

class ResponseController extends Controller
{
    //


    public function totalFarmers()
    {
        $farmersData = User::all();
        $farmersInfoData = InfoUser::all();
        return response()->json([
            'farmersData' => $farmersData,
            'addInfo' => $farmersInfoData
        ]);
    }

    public function farmersOrderRecord()
    {
        $orderRecord = FarmerOrder::all();
        return response()->json([
            'farmerOrderRecord' => $orderRecord
        ]);
    }



    public function farmerTotalEarning($user_id)
    {
        $farmerEarning = Earning::where('user_id', $user_id)->get()->sortDesc()->first();
        return response()->json([
            'earningFarmer' => $farmerEarning
        ]);
    }


    public function farmerDailyRecords($user_id)
    {
        $farmerDailyDeliveryRecords = DeliveryRecord::where('user_id', $user_id)->get();
        return response()->json([
            'earningFarmer' => $farmerDailyDeliveryRecords
        ]);
    }





}
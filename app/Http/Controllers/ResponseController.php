<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\InfoUser;
use App\Models\FarmerOrder;

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

}
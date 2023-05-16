<?php

namespace App\Http\Controllers;

use App\Models\DeliveryRecord;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\InfoUser;
use App\Models\FarmerOrder;
use App\Models\Earning;
use App\Models\SupplyItem;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Token;

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

    public function farmerDeliveredStatement()
    {

        $statement = DeliveryRecord::latest('created_at')->take(8)->get();
        return response()->json([
            'statement' => $statement
        ]);
    }



    public function farmerTotalEarning(Request $request)
    {
        // Get the token from the request query parameter
        $token = $request->query('token');
        // Try to decode the token
        try {
            $decodedToken = JWTAuth::decode(new Token($token));
        } catch (\Exception $e) {
            // Handle the exception
        }
        // Extract the data from the payload
        $user_id = $decodedToken->get('sub');
        // Get the user's earning
        $farmerEarning = Earning::where('user_id', $user_id)->orderByDesc('id')->first();

        return response()->json([
            'earningFarmer' => $farmerEarning
        ]);
    }

    public function farmerDailyRecords(Request $request)
    {
        $token = $request->query('token');
        try {
            $decodedToken = JWTAuth::decode(new Token($token));
        } catch (\Exception $ex) {
            return response()->json([$ex]);
        }
        $user_id = $decodedToken->get('sub');
        $farmerDailyDeliveryRecords = DeliveryRecord::where('user_id', $user_id)->get();
        return response()->json([
            'deliveryrecord' => $farmerDailyDeliveryRecords
        ]);
    }




    // public function farmerTotalEarning($user_id)
    // {
    //     $farmerEarning = Earning::where('user_id', $user_id)->get()->sortDesc()->first();
    //     return response()->json([
    //         'earningFarmer' => $farmerEarning
    //     ]);
    // }


    // public function farmerDailyRecords($user_id)
    // {
    //     $farmerDailyDeliveryRecords = DeliveryRecord::where('user_id', $user_id)->get();
    //     return response()->json([
    //         'deliveryrecord' => $farmerDailyDeliveryRecords
    //     ]);
    // }

    public function individualFarmerOrders(Request $request)
    {
        $token = $request->query('token');
        try {
            $decodedToken = JWTAuth::decode(new Token($token));
        } catch (\Exception $ex) {
            return response()->json([$ex]);
        }
        $user_id = $decodedToken->get('sub');
        $individual_order_record = FarmerOrder::where('user_id', $user_id)->get();
        return response()->json([
            'indivudualOrder' => $individual_order_record
        ]);
    }

    public function fetchSuppyItem()
    {
        $suppyItem = SupplyItem::all();
        return response()->json([
            'supplyItem' => $suppyItem
        ]);
    }






}
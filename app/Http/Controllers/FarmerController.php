<?php

namespace App\Http\Controllers;

use App\Models\InfoUser;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use App\Models\DeliveryRecord;
use App\Models\SupplyItem;
use App\Models\FarmerOrder;
use App\Models\Earning;

class FarmerController extends Controller
{
    public function index()
    {
        $user = User::with('infoUser')->first();
        return $response = [
            $user->toArray(),
            //toArray gives all the information including it's relational table
            'message' => 'All farmers Data Are GIven Below',
            200
        ];

        // $user = InfoUser::with('User')->first();
        // return $response = [
        //     $user->toArray(),
        //     //toArray gives all the information including it's relational table
        //     'message' => 'All farmers Data Are GIven Below',
        //     200

        // ];
    }


    public function supplyInventory(Request $request)
    {

        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'required | string | max:255',
            'price' => 'required | integer | min:255'
        ]);

        if ($validatedData) {
            $supply = new SupplyItem();
            $supply->name = $validatedData['name'];
            $supply->description = $validatedData['description'];
            $supply->price = $validatedData['price'];
            $supply->save();
        }

        $response = [
            'message' => "supply item has been successfully stored",
            200
        ];

        return ($response);
    }


    public function earning($userId)
    {
        $totalearning = new Earning();
        // $delivery = DeliveryRecord::latest()->first();
        // $order = Farmer_Order::latest()->first();
        $totalSales = DeliveryRecord::where('user_id', $userId)->sum('litre');
        $incomePrice = DeliveryRecord::where('user_id', $userId)->sum('price');
        $expenditurePrice = FarmerOrder::where('user_id', $userId)->latest('created_at')->sum('expenditure');


        $totalearning->user_id = $userId;
        $totalearning->sales = $totalSales;
        $totalearning->income = $incomePrice;
        $totalearning->expenditure = $expenditurePrice;
        $totalearning->earning = $totalearning->income - $totalearning->expenditure;
        $totalearning->save();

        $response = [
            'message' => 'User earning has been stored properly',
            200
        ];

        return $response;


    }




    public function storeDelivery(Request $request)
    {

        $validatedData = $request->validate([
            'user_id' => 'required|integer|max:255',
            'fat' => 'required|integer|max:255|',
            'litre' => 'required|integer|max:255|',
            'date' => 'required|integer|max:255|',
        ]);

        if ($validatedData) {
            $user = new DeliveryRecord();
            $user->user_id = $validatedData['user_id'];
            $user->fat = $validatedData['fat'];
            $user->litre = $validatedData['litre'];
            $user->date = $validatedData['date'];

            //Hamro Algorithm Price Calculate Garne
            //Calculate the price
            $base_price = 80;
            $base_fat = 3.5;
            $fat_price_factor = 8;
            $price_per_litre = $base_price + ($user->fat - $base_fat) * $fat_price_factor;
            $user->price = $price_per_litre * $user->litre;
            $user->save();

            //Earning function is called here so that we can store Income from price
            $userId = $user->user_id;
            $this->earning($userId);
            $response = [
                'message' => 'New Milk Suppliers has been successfully registered',
                200
            ];

        } else {
            $response = [
                'message' => "failed in data insertion",
                500
            ];
        }
        return ($response);



    }



    public function orderRecord(Request $request)
    {
        $validatedData = $request->validate([
            'user_id' => 'required| integer | max:255',
            'name' => 'required|string| max:255',
            'price' => 'required | integer | min:255',
            'quantity' => 'required | integer | max:255',
        ]);

        if ($validatedData) {
            $order = new FarmerOrder();
            $order->user_id = $validatedData['user_id'];
            $order->name = $validatedData['name'];
            $order->price = $validatedData['price'];
            $order->quantity = $validatedData['quantity'];
            $order->expenditure = $validatedData['price'] * $validatedData['quantity'];
            $order->save();

            //Earning function called so that we can store expenditure
            $userId = $order->user_id;
            $this->earning($userId);
        }

        $response = [
            'message' => "Item  Has been order successfully",
            200
        ];

        return ($response);
    }


    public function test()
    {
        $a = Earning::where('user_id', 1)->get()->sortDesc()->first();
        echo $a;
    }




}
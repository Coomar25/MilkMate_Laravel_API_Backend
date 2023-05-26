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
use TheSeer\Tokenizer\Exception;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Token;

class FarmerController extends Controller
{
    public function farmer()
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
            'description' => 'required|string|max:255',
            'price' => 'required|integer|min:255',
            'image' => 'required|image|max:2048'
        ]);
        $supply = new SupplyItem();
        $supply->name = $validatedData['name'];
        $supply->description = $validatedData['description'];
        $supply->price = $validatedData['price'];
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $image->move('images/', $imageName);
            $supply->image = $imageName;
        }
        $supply->save();
        return response()->json(['message' => 'Supply item has been successfully stored.']);
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
            // 'date' => 'required|date|max:255|',
        ]);

        if ($validatedData) {
            $user = new DeliveryRecord();
            $user->user_id = $validatedData['user_id'];
            $user->fat = $validatedData['fat'];
            $user->litre = $validatedData['litre'];
            // $user->date = $validatedData['date'];
            $user->date = implode(',', $request->date);

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
                'message' => 'Farmers Milk status addded',
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

        $farmerEarning = Earning::where('user_id', $validatedData['user_id'])->orderByDesc('id')->first();
        if ($farmerEarning->earning < 1000) {
            return response()->json([
                'message' => "Your average earning is less than 1000, So You can't order from Dairy Income. Buying Supply Item is limited ! Buy through khalti"
            ]);
        } else {

            if ($farmerEarning->earning < $validatedData['price']) {
                return response()->json([
                    'message' => 'Your total earning is less the price of product'
                ]);
            } elseif ($validatedData) {
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

    }


    public function test()
    {

        echo "hello there";
        // $a = Earning::where('user_id', 1)->get()->sortDesc()->first();
        // echo $a;
        // return response()->json([
        //     $a
        // ]);
    }



    public function deleteInventory(Request $request)
    {
        $id = $request->id;
        $item = SupplyItem::whereId($id);
        // return response()->json("Successfullty data deleted");
        try {
            $item->delete();
            $response = [
                'message' => 'Item has been delete successfully',
            ];
            $respond = 200;
        } catch (Exception $ex) {

            $response = [
                'message' => 'Internal server Error',
            ];
            $respond = 500;
        }
        return response()->json($response, $respond);
    }










}
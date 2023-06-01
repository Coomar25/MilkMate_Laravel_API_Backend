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
use App\Models\ProductDescription;
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
            'image' => 'required|image|max:2048',
            'batch' => 'required|string|max:255',
            'category' => 'required|string|max:255',
            'companyname' => 'required|string|max:255',
            'quantity' => 'required|integer|max:255',
            'expirydate' => 'required|string|max:255',
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
        $productdescription = new ProductDescription();
        $productdescription->supply_id = $supply->id;
        $productdescription->batch = $validatedData['batch'];
        $productdescription->category = $validatedData['category'];
        $productdescription->companyname = $validatedData['companyname'];
        $productdescription->quantity = $validatedData['quantity'];
        $productdescription->expirydate = $validatedData['expirydate'];
        $productdescription->save();
        return response()->json(['message' => 'Supply item has been successfully stored.']);
    }


    public function updateInventory(Request $request, $editSuppyId)
    {
        $id = $editSuppyId;
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'required|string|max:255',
            'price' => 'required|integer|min:255',
            'image' => 'nullable|image|max:2048',
            'batch' => 'required|string|max:255',
            'category' => 'required|string|max:255',
            'companyname' => 'required|string|max:255',
            'quantity' => 'required|integer|max:255',
            'expirydate' => 'required|integer|max:255',
        ]);

        $supply = SupplyItem::findOrFail($id);
        $supply->name = $validatedData['name'];
        $supply->description = $validatedData['description'];
        $supply->price = $validatedData['price'];

        if ($request->hasFile('image')) {
            // Remove the old image
            if ($supply->image) {
                // Assuming the images are stored in the 'images/' directory
                $oldImagePath = public_path('images/') . $supply->image;
                if (file_exists($oldImagePath)) {
                    unlink($oldImagePath);
                }
            }

            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $image->move('images/', $imageName);
            $supply->image = $imageName;
        }

        $supply->save();

        $productDescription = ProductDescription::where('supply_id', $supply->id)->first();
        $productDescription->batch = $validatedData['batch'];
        $productDescription->category = $validatedData['category'];
        $productDescription->companyname = $validatedData['companyname'];
        $productDescription->quantity = $validatedData['quantity'];
        $productDescription->expirydate = $validatedData['expirydate'];
        $productDescription->save();

        return response()->json(['message' => 'Supply item has been successfully updated.']);
    }







    public function earning($userId)
    {
        $totalearning = new Earning();
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
        $checkStatus = new FarmerOrder();
        $validatedData = $request->validate([
            'user_id' => 'required| integer | max:255',
            'name' => 'required|string| max:255',
            'price' => 'required | integer | min:255',
            'quantity' => 'required | integer | max:255',
        ]);
        $farmerEarning = Earning::where('user_id', $validatedData['user_id'])->orderByDesc('id')->first();
        if ($farmerEarning->earning < 1000) {
            return response()->json([
                'message' => "Your average earning is less than 1000, So You can't order from Dairy Income. Buying Supply Item is limited ! Pay via khalti"
            ]);
        } else {
            if ($farmerEarning->earning < $validatedData['price']) {
                return response()->json([
                    'message' => 'Insufficient Balance Please pay vai Khalti'
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
                // $userId = $order->user_id;
                // $this->earning($userId);
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
        $item = SupplyItem::whereId($id)->first(); // Retrieve the item from the database
        $deleteRelationalSupplyData = ProductDescription::wheresupply_id($id)->delete(); //supply_id is foreign key 
        if ($item) {
            // Delete the associated image file
            $imagePath = public_path('images/' . $item->image);
            if (file_exists($imagePath)) {
                unlink($imagePath);
            }
            // Delete the associated product_descriptions records
            try {
                $item->delete();
                $response = [
                    'message' => 'Item has been deleted successfully',
                ];
                $respond = 200;
            } catch (Exception $ex) {
                $response = [
                    'message' => 'Internal server error',
                ];
                $respond = 500;
            }
        } else {
            $response = [
                'message' => 'Item not found',
            ];
            $respond = 404;
        }
        return response()->json($response, $respond);
    }


    // public function checkOrderStatus(Request $request)
    // {
    //     $user_id = $request->user_id;
    //     $status = $request->status;
    //     $farmerorder = FarmerOrder::where('user_id', $user_id)->first();
    //     if ($farmerorder) {
    //         $farmerorder->status = $status;
    //         $farmerorder->save();
    //         return response()->json([
    //             "message" => "Status updated successfully"
    //         ]);
    //     } else {
    //         return response()->json([
    //             "message" => "No order found for the given user_id"
    //         ], 404);
    //     }
    // }

    public function checkOrderStatus(Request $request)
    {
        $id = $request->id;
        $status = $request->status;

        $farmerorders = FarmerOrder::where('id', $id)->get();
        //database ma save garnu aagadi hamle itterate garnu parne hunxa each order lai ra tespaxi update garxaam status lai
        if ($farmerorders->isNotEmpty()) {
            foreach ($farmerorders as $farmerorder) {
                $farmerorder->status = $status;
                $farmerorder->save();
                if ($farmerorder->status == "completed") {
                    $userId = $farmerorder->user_id;
                    $this->earning($userId);
                }
            }
            return response()->json([
                "message" => "Status updated successfully"
            ]);
        } else {
            return response()->json([
                "message" => "No orders found for the given user_id"
            ], 404);
        }
    }

    //In the modified code, we use ->get() instead of ->first() to retrieve all orders matching the specified user_id. 
    //Then, we iterate through each order and update the status field before saving it to the database.
    // If no orders are found for the given user_id, we return a 404 response with a relevant message.
    // Remember to adjust the code based on your Laravel setup and the structure of your FarmerOrder model.













}
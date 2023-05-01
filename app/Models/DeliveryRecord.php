<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DeliveryRecord extends Model
{
    use HasFactory;


    protected $fillable = [
        'user_id',
        'fat',
        'litre',
        'date',
        'price'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }


}
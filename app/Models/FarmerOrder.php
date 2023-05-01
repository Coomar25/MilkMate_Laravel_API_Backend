<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FarmerOrder extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'name',
        'price',
        'quantity',
        'expenditure'
    ];

    public function farmer()
    {
        return $this->belongsTo(User::class);
    }
}
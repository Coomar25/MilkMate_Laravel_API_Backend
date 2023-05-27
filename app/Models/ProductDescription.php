<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductDescription extends Model
{
    use HasFactory;

    protected $fillable = [
        'batch',
        'category',
        'companyname',
        'expirydate',
        'quantity'
    ];

    public function suppyDescription()
    {
        return $this->belongsTo(SupplyItem::class);
    }

}
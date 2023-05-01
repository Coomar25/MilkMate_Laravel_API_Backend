<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Earning extends Model
{
    use HasFactory;

    protected $fillable = [
        'income',
        'expenditure',
        'earning'
    ];

    public function farmer()
    {
        return $this->belongsTo(User::class);
    }
}
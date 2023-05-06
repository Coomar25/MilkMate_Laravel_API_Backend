<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ResetToken extends Model
{
    use HasFactory;


    public $table = 'reset_tokens';
    public $timestamps = false;
    protected $primaryKey = 'id';


    protected $fillable = [
        'email',
        'token',
        'created_at',
        'updated_at'
    ];
}
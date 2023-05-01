<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InfoUser extends Model
{
    use HasFactory;
    protected $table = 'info_users';
    protected $fillable = ['address', 'contact'];
}
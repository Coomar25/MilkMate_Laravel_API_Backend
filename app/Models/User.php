<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;

use Illuminate\Console\View\Components\Info;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Tymon\JWTAuth\Contracts\JWTSubject;



class User extends Authenticatable implements JWTSubject
{
    use HasApiTokens, HasFactory, Notifiable;


    protected $fillable = [
        'name',
        'email',
        'password',
    ];


    protected $hidden = [
        'password',
        'remember_token',
    ];


    protected $casts = [
        'email_verified_at' => 'datetime',
    ];



    //********************************************************** */

    public function milkdeliveryRecord()
    {
        return $this->hasMany(DeliveryRecord::class);
    }

    public function infoUser()
    {
        return $this->hasOne(InfoUser::class);
    }



    public function FarmerOrder()
    {
        return $this->hasMany(FarmerOrder::class);
    }

    public function earning()
    {
        return $this->hasOne(Earning::class);
    }

    public function productdescription()
    {
        return $this->hasMany(ProductDescription::class);
    }


    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    public function getJWTCustomClaims()
    {
        return [];
    }




    //********************************************************** */







}
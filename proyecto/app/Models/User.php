<?php

namespace App\Models;

use Illuminate\Support\Facades\Hash;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class User extends Authenticatable
{
    use HasFactory, Notifiable;
    use HasApiTokens;
    protected $table = 'users';
    protected $primarykey = 'id';
    protected $fillable = [
        'id', 'rol','name','apellidos', 'email', 'password', 'image'
    ];

    protected $casts = [
        'id' => 'integer',
    ];

    public function cliente(){
        return $this->hasOne(cliente::class, 'userid', 'id');
    }
}
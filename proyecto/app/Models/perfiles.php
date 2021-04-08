<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class perfiles extends Model
{
    use HasFactory;
    protected $table = 'perfiles';
    protected $primarykey = 'perfilid';
    protected $fillable = [
        'perfilid','email','facebook','instagram','foto','rol','created_at','updated_at'];

}

<?php

namespace App\Models;

use Laravel\Passport\HasApiTokens;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use use App\Models\perfiles;

class usuarios extends Model
{
    use HasFactory;
        use HasApiTokens;
    protected $table = 'usuarios';
    protected $primarykey = 'id';
    protected $fillable = [
        'id','login','pass','nombre','apellidos','perfil','created_at','updated_at'];
    
    public function perfil(){
        return $this->hasMany(perfil::class,'perfilid','perfil')
    }
}

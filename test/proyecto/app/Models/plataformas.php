<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class plataformas extends Model
{
    use HasFactory;
    protected $table = 'plataformas';
    protected $primarykey = 'id';
    protected $fillable = [
        'id','nombre','created_at','updated_at'];

    public function juegos(){
        return $this->hasMany(juegos::class,'plataformaid','id');
    }
}

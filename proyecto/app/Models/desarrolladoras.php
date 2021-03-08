<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class desarrolladoras extends Model
{
    use HasFactory;
    protected $table = 'desarrolladoras';
    protected $primarykey = 'desarrolladoraid';
    protected $fillable = [
    'desarrolladoraid','nombdesarrolladora','created_at','updated_at'];
    
    public function juegos(){
        return $this->hasMany(juegos::class,'desarrolladoraid','desarrolladoraid');
    }

}

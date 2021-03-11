<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class juegos extends Model
{
    use HasFactory;
    protected $table = 'juegos';
    protected $primarykey = 'juegoid';
    protected $fillable = [
        'juegoid','nombre_juego','plataformaid','descripcion','precio','entrega','imagen','created_at','updated_at'];


    public function plataformas() {
        return $this->belongsTo(plataformas::class,'id','plataformaid');
    }

    public function desarrolladoras() {
        return $this->belongsTo(desarrolladoras::class,'desarrolladoraid','desarrolladoraid');
    //hasMany 1 ha muchos tiene 1 desarrollador
    //belongsTo muchos ha  1 desarrollador tiene muchos juegos
    }
}

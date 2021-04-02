<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class compras extends Model
{
    use HasFactory;
    protected $table = 'compras';
    protected $primarykey = 'compraid';
    protected $fillable = [
    'compraid','fecha','usaurioid','juegoid','created_at','updated_at'];

    public function usuarios() {
        return $this->belongsTo(usuarios::class,'id','usuarioid')
    }

    public function juegos() {
        return $this->belongsTo(juegos::class,'juegoid','juegoid')
    }

}

<?php

namespace App\Http\Controllers\filters;

use App\Models\juegos;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


class juegosController extends Controller
{
    public function filtros(Request $request) {
        $data = json_decode($request->input('data'), true);
        $precios = $data['precios'];
        $plataformas = $data['plataformas'];
        $juegos = juegos::select("*")
                            ->whereIn('plataformaid', $plataformas)
                            ->where('Precio', '>', $precios[0])
                            ->where('Precio', '<', $precios[1])
                            ->get();
        return  response()->json([
        'status' => 'success',
        'message' => 'Juegos filtrados' ,
        'data' => $juegos,
        'code' => 401,
        ]);
    }
}

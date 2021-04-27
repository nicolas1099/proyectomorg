<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\admin\juegosController;

Route::group(['middleware' => 'auth:api'], function () {
    Route::get('admin/juegos', [juegosController::class,'index']);
    Route::get('admin/juegos/{juegoid}', [juegosController::class,'show']);
    Route::group(['middleware' => 'rol.admin'], function () {
        Route::post('admin/juegos', [juegosController::class,'store']);
        Route::put('admin/juegos/{juegoid}', [juegosController::class,'update']);
        Route::delete('admin/juegos/{juegoid}', [juegosController::class,'destroy']);
    });
});

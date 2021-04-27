<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\admin\plataformasController;

Route::group(['middleware' => 'auth:api'], function () {
    Route::get('admin/plataformas', [plataformasController::class, 'index']);
    Route::get('admin/plataformas/{id}/juegos', [plataformasController::class,'getjuegos']);
});
Route::group(['middleware' => 'auth:api'], function () {
    Route::group(['middleware' => 'rol.admin'], function () {
        Route::post('admin/plataformas/new', [plataformasController::class, 'store']);
    });
});
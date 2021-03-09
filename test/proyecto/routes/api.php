<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\admin\juegosController;
use App\Http\Controllers\admin\desarrolladoraController;
use App\Http\Controllers\admin\plataformasController;
use App\Http\Controllers\admin\authController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('juegos', juegosController::class);
Route::resource('desarrolladoras', desarrolladoraController::class);
Route::resource('plataformas', plataformasController::class);
Route::post('login', [authController::class, 'login']);
Route::post('registro', [authController::class, 'registro']);
Route::group(['middleware' => ['auth:api']], function () {
    Route::get('user', [authController::class, 'getUser']);
    Route::post('logout', [authController::class, 'logout']);
});


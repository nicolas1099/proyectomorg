<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJuegosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('juegos', function (Blueprint $table) {
            $table->string('juegoid')->primary();
            $table->string('nombre_juego',100);
            $table->longText('descripcion')->nullable();
            $table->integer('plataformaid');
            $table->integer('desarrolladoraid');
            $table->double('precio', 5, 2);
            $table->string('entrega',100);
            $table->string('imagen',100)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('juegos');
    }
}

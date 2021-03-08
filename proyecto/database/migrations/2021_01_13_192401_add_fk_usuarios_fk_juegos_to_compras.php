<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFkUsuariosFkJuegosToCompras extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('compras', function (Blueprint $table) {
            $table->foreign('usuarioid')
            ->references('id')->on('usuarios')
            ->onDelete('cascade')
            ->onUpdate('cascade');

            $table->foreign('juegoid')
            ->references('juegoid')->on('juegos')
            ->onDelete('cascade')
            ->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('compras', function (Blueprint $table) {
            //
        });
    }
}

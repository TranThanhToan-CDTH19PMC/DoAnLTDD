<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use   Illuminate\Database\QueryException;

class TableDiadanhInDacDiem extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('dac_diem_dia_danh', function (Blueprint $table) {
            $table->unsignedInteger('id_dia_danh')->after('id');
            $table->foreign('id_dia_danh')
                   ->references('id')->on('dia_danh')
                   ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('dac_diem_dia_danh', function (Blueprint $table) {
            
        });
    }
}

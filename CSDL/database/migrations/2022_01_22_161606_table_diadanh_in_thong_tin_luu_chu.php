<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TableDiadanhInThongTinLuuChu extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('thong_tin_luu_chu', function (Blueprint $table) {
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
        Schema::table('thong_tin_luu_chu', function (Blueprint $table) {
            //
        });
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TableDiadanhInBaiViet extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('bai_viet', function (Blueprint $table) {
            $table->unsignedInteger('id_dia_danh')->after('id');
            $table->foreign('id_dia_danh')
            ->references('id')->on('dia_danh')
            ->onDelete('cascade');

            $table->unsignedInteger('id_nguoi_dung')->after('id');
            $table->foreign('id_nguoi_dung')
            ->references('id')->on('thong_tin_ca_nhan')
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
        Schema::table('bai_viet', function (Blueprint $table) {
            //
        });
    }
}

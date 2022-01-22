<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TableDiadanhInThongTinCaNhan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('thong_tin_ca_nhan', function (Blueprint $table) {
            $table->unsignedInteger('id_tai_khoan')->after('id');
            $table->foreign('id_tai_khoan')
            ->references('id')->on('tai_khoan')
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
        Schema::table('thong_tin_ca_nhan', function (Blueprint $table) {
            //
        });
    }
}

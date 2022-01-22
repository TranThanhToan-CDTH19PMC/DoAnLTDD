<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TableHinhthucInDiaDanh extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('dia_danh', function (Blueprint $table) {
            $table->unsignedInteger('hinh_thuc')->after('id');
            $table->foreign('hinh_thuc')
            ->references('id')->on('loai_hinh_thuc')
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
        Schema::table('dia_danh', function (Blueprint $table) {
            //
        });
    }
}

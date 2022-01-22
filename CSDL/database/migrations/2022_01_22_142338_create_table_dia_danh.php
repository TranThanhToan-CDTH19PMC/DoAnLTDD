<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableDiaDanh extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dia_danh', function (Blueprint $table) {
            $table->increments('id');
            $table -> text('ten_dia_danh');
            $table -> text('thong_tin');
            $table -> text('hinh_anh');
            $table ->text('vi_tri');
            $table -> text('mien');
            $table->unsignedInteger('luot_chia_se');
            $table->timestamps();
            $table -> softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('dia_danh');
    }
}

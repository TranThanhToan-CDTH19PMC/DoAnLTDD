<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateThongTinLuuChu extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('thong_tin_luu_chu', function (Blueprint $table) {
            $table->increments('id');
            $table->Text('ten_luu_chu');
            $table->Text('mo_ta');
            $table->Text('dia_chi');
            $table->Text('SDT');
            $table->Text('gia_thanh');
            $table->softDeletes();
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
        Schema::dropIfExists('thong_tin_luu_chu');
    }
}

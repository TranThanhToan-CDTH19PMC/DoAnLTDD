<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDacDiemDiaDanh extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dac_diem_dia_danh', function (Blueprint $table) {
            $table->increments('id');
            $table->Text('canh_vat');
            $table->Text('khi_hau');
            $table->Text('tai_nguyen');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('dac_diem_dia_danh');
    }
}

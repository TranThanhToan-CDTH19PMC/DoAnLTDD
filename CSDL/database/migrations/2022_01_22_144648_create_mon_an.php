<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMonAn extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mon_an', function (Blueprint $table) {
            $table->increments('id');
            $table->Text('ten_mon');
            $table->Text('gia_tien');
            $table->Text('mo_ta');
            $table->Text('ten_quan');
            $table->Text('dia_chi');
            $table->Text('sdt');
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
        Schema::dropIfExists('mon_an');
    }
}

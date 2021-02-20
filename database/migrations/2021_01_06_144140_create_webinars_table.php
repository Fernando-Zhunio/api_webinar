<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWebinarsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('webinars', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('description',1000);
            $table->string('name');
            $table->string('url_img')->nullable();
            $table->string('address');
            $table->boolean('status')->default(false);
            $table->timestamp('start');
            $table->timestamp('end');
            $table->foreignId('user_id');
            $table->foreignId('coordinate_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('webinars');
    }
}

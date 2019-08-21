<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCrimeStatisticsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('crime_statistics', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unique();
            $table->integer('district_id');
            $table->integer('thana_id')->nullable();
            $table->integer('robbery');
            $table->integer('murder');
            $table->integer('speedy_trial');
            $table->integer('riot');
            $table->integer('women_child');
            $table->integer('kidnapping');
            $table->integer('police_assault');
            $table->integer('burglary');
            $table->integer('theft');
            $table->integer('other');
            $table->integer('total');
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
        Schema::dropIfExists('crime_statistics');
    }
}

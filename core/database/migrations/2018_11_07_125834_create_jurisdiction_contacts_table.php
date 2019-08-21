<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJurisdictionContactsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jurisdiction_contacts', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('jurisdiction_level_id');
            $table->integer('district_id')->nullable();
            $table->integer('thana_id')->nullable();
            $table->integer('user_id')->nullable();
            $table->string('designation');
            $table->string('person_name');
            $table->string('mobile')->nullable();
            $table->string('phone')->nullable();
            $table->string('fax')->nullable();
            $table->string('email')->nullable();
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
        Schema::dropIfExists('jurisdiction_contacts');
    }
}

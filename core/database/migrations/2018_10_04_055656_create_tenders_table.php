<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTendersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tenders', function (Blueprint $table) {
            $table->increments('id');
            $table->string('tender_title')->index();
            $table->date('start_date')->nullable();
            $table->date('end_date')->nullable();
            $table->string('tender_file')->nullable();
            $table->integer('jurisdiction_level_id');
            $table->integer('district_id')->nullable();
            $table->integer('thana_id')->nullable();
            $table->integer('created_by');
            $table->string('creator_ip')->nullable();
            $table->integer('approved_by');
            $table->date('approval_date');
            $table->string('approving_ip')->nullable();
            $table->integer('status')->nullable();
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
        Schema::dropIfExists('tenders');
    }
}

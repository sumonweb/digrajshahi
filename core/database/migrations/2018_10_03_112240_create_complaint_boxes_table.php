<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateComplaintBoxesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('complaint_boxes', function (Blueprint $table) {
            $table->increments('id');
            $table->string('complainer_name');
            $table->string('complainer_email')->nullable();
            $table->string('complainer_mobile')->nullable();
            $table->string('complainer_address')->nullable();
            $table->string('subject');
            $table->text('complaint');
            $table->integer('viewed_by')->nullable();
            $table->timestamp('viewed_date_time');
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
        Schema::dropIfExists('complaint_boxes');
    }
}

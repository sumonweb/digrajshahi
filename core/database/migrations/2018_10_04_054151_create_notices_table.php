<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNoticesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('notices', function (Blueprint $table) {
            $table->increments('id');
            $table->string('notice_type')->default('notice');
            $table->string('notice_title')->index();
            $table->string('notice_file')->nullable();
            $table->text('notice')->nullable();
            $table->integer('jurisdiction_level_id');
            $table->integer('district_id')->nullable();
            $table->integer('thana_id')->nullable();
            $table->integer('created_by');
            $table->string('creator_ip')->nullable();
            $table->integer('approved_by')->nullable();
            $table->date('approval_date')->nullable();
            $table->string('approving_ip')->nullable();
            $table->integer('status')->default(0);
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
        Schema::dropIfExists('notices');
    }
}

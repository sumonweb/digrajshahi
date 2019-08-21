<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('news', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title')->index();
            $table->date('news_date')->nullable();
            $table->text('description');
            $table->string('cover_image')->nullable();
            $table->text('video')->nullable();
            $table->integer('jurisdiction_level_id')->index()->nullable();
            $table->integer('district_id')->nullable()->index();
            $table->integer('thana_id')->nullable()->index();
            $table->integer('posted_by')->nullable();
            $table->integer('approved_by')->nullable();
            $table->date('approval_date')->nullable();
            $table->string('posting_ip')->nullable();
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
        Schema::dropIfExists('news');
    }
}

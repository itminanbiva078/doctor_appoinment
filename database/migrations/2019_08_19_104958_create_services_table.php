<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateServicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('services', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title', 100)->index();
            $table->longText('description')->nullable();
            $table->text('image', 100)->nullable();
            $table->string('slug')->unique();
            //            ----------
            $table->integer('views')->default(0)->unsigned();
            $table->string("seo_title")->nullable();
            $table->text('meta_key')->nullable();
            $table->text('meta_description')->nullable();
            $table->integer('created_by')->unsigned()->nullable();
            $table->integer('modified_by')->unsigned()->nullable();
            $table->tinyInteger('status')->index()->default(2)->comment('1=active, 2=pending, 3=cancel');
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
        Schema::dropIfExists('services');
    }
}

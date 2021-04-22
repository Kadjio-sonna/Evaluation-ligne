<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTeachersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('teachers', function (Blueprint $table) {
            $table->id();
            $table->string('name')->default('null')->nullable();
            $table->string('email')->default('null')->nullable();
            $table->string('subject')->default('null')->nullable();
            $table->string('phone')->default('null')->nullable();
            $table->string('sexe')->default('null')->nullable();
            $table->string('image_prof')->default('null')->nullable();
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
        Schema::dropIfExists('teachers');
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCareersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('careers', function (Blueprint $table) {
            $table->id();
            $table->string('job_title',150)->nullable();
			$table->string('slug',150)->nullable();
			$table->text('job_requirement',150)->nullable();
			$table->text('edu_requirement')->nullable();
			$table->text('experience')->nullable();
			$table->string('salary',50)->nullable();
			$table->string('job_type',50)->nullable();
			$table->date('publishdate')->nullable();
			$table->date('deadline')->nullable();
            $table->tinyInteger('status')->nullable();
            $table->integer('created_by')->nullable();
            $table->integer('updated_by')->nullable();
            $table->integer('deleted_by')->nullable();
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
        Schema::dropIfExists('careers');
    }
}

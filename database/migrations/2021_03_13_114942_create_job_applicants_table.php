<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobApplicantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('job_applicants', function (Blueprint $table) {
            $table->id();
            $table->string('username',150)->nullable();
			$table->unsignedBigInteger('jobid');
            $table->foreign('jobid')
                ->references('id')
                ->on('careers');				
			$table->string('mobile',250)->nullable();
			$table->string('email',250)->nullable();
			$table->string('currentDesignation',250)->nullable();
			$table->string('country',250)->nullable();
			$table->string('location',250)->nullable();
			$table->text('address',250)->nullable();
			$table->string('dob',250)->nullable();
			$table->string('age',250)->nullable();
			$table->string('nationality',250)->nullable();
			$table->string('profession',250)->nullable();
			$table->string('cv',250)->nullable();
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
        Schema::dropIfExists('job_applicants');
    }
}

<?php

use Faker\Provider\ar_EG\Company;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('product_descriptions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('supply_id');
            $table->foreign('supply_id')->references('id')->on('supply_items');
            $table->string('batch');
            $table->string('category');
            $table->string('companyname');
            $table->string('quantity');
            $table->string('expirydate');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('product_descriptions');
    }
};
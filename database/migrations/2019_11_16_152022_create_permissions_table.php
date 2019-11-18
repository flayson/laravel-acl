<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePermissionsTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('permissions', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 50); //abreviação
            $table->string('label', 100); //detalhar, ex. administrador
            $table->timestamps();
        });

        Schema::create('permission_role', function (Blueprint $table) { //juntar as regras(papeis) com o usuário
            $table->increments('id');
            $table->integer('permission_id')->unsigned();
            $table->integer('role_id')->unsigned();
             
            $table->foreign('permission_id')
                    ->references('id')
                    ->on('permissions')
                    ->onDelete('cascade'); //caso seja excluido será removido nos usuários também!
            
            $table->foreign('role_id')
                    ->references('id')
                    ->on('roles')
                    ->onDelete('cascade'); //caso seja excluido será removido nos usuários também!
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {//rool back
        Schema::dropIfExists('permission_role');
        Schema::dropIfExists('permissions');
    }

}

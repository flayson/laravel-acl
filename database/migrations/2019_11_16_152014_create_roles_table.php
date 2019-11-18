<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRolesTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('roles', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 50); //abreviação
            $table->string('label', 100); //detalhar, ex. administrador
            $table->timestamps();
        });

        Schema::create('role_user', function (Blueprint $table) { //juntar as regras(papeis) com o usuário
            $table->increments('id');
            $table->integer('role_id')->unsigned();
            $table->integer('user_id')->unsigned();
            
            $table->foreign('role_id')
                    ->references('id')
                    ->on('roles')
                    ->onDelete('cascade'); //caso seja excluido será removido nos usuários também!
            
            
            $table->foreign('user_id')
                    ->references('id')
                    ->on('users')
                    ->onDelete('cascade'); //caso seja excluido será removido nos usuários também!
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() { //rool back
        Schema::dropIfExists('user_roler');//deleta primeiro user_roler, para depois deletar roles.
        Schema::dropIfExists('roles');
        
    }

}

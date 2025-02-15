<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    public function roles(){ //método que retorna todas as roles.
        return $this->belongsToMany(\App\Role::class);
    }
}

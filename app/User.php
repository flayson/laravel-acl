<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Permission;
class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
    public function roles(){
        return $this->belongsToMany(\App\Role::class);
    }

    public function hasPermission(Permission $permission){
        
        return $this->hasAnyRoles($permission->roles);
    }
    
    public function hasAnyRoles($roles){//recebe as roles, ex. adm, manager, etc
        
        
        if(is_array($roles) || is_object($roles)){
            return !! $roles->intersect($this->roles)->count(); //$roles->intersect($this->roles)->count(); retorna 0, 1. E o !! server para retornar true ou false.
//            foreach($roles as $role){
//                return $this->hasAnyRoles($role); //chamada recursiva
////                return $this->roles->contains('name', $role->name);
//            }
            return $this->rotes-contains('name', $roles);
            
        }
    }
}

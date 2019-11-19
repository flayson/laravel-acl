<?php

namespace App\Providers;

use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use App\User;
use App\Post;
use App\Permission;

class AuthServiceProvider extends ServiceProvider {

    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
//        'App\Model' => 'App\Policies\ModelPolicy',
//        \App\Post::class => \App\Policies\PostPolicy::class, usando apenas quando há permissão estática
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot() {
        $this->registerPolicies();

//         Gate::define('update-post', function($user, Post $post) { //pega o usuário logado automaticamente
//            return $user->id == $post->user_id;
//        });
        $permissions = Permission::with('roles')->get();
//        dd($permissions);

        foreach ($permissions as $permission) {
            Gate::define($permission->name, function($user) use ($permission) {
                return $user->hasPermission($permission);
            });
        }
        //ability: add_post, edit post, etc.
        Gate::before(function(User $user, $ability) {
            if ($user->hasAnyRoles('adm')) {
                return true;
            }
        });
    }

}

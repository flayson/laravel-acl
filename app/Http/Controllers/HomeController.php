<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use Gate;

class HomeController extends Controller {

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct() {
        $this->middleware('auth');
    }

    public function index(Post $post) {
        $posts = $post->all();
//        $posts = $post->where('user_id', auth()->user()->id)->get();
        return view('home', compact('posts'));
    }

    public function update($idPost) {
//        $posts = $post->all();
        $post = Post::find($idPost);
//        $this->authorize('update-post', $post); //pega automatimente o usuario logado
        if(Gate::denies('update-post', $post)){
            abort(403, 'Unauthorized ( Não autorizado! )');
        }
        return view('update-post', compact('post'));
    }
    
    public function  rolesPermissions(){
        $name = auth()->user()->name;
        echo("<h1>{$name}</h1>");
        foreach (auth()->user()->roles as $role){
            echo "<b>$role->name -></b> ";
            
            $permissions = $role->permissions;
            foreach ($permissions as $permission){
                echo "$permission->name, ";
            }
            echo '<hr>';
        }
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
//    public function index()
//    {
//        return view('home');
//    }
}

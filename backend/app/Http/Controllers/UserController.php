<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\UserRegisterRequest;

class UserController extends Controller
{
    public function index() {
        return User::all();
    }

    public function user(Request $request) {
        return $request->user();
    }

    public function register(UserRegisterRequest $request) {
        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' =>Hash::make($request->password)
        ]);

        return 'user create successfully !';
    }
}

<?php

namespace App\Http\Controllers;

use App\User;
use App\Konsumen;
use App\Level;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class APIAuthController extends Controller
{
    public function registerApi(Request $request){
        $valid = Validator::make($request->all(), [
            'nama_konsumen'=>['required'],
            'alamat_konsumen'=>['required'],
            'wa_konsumen'=>['required'],
            'email'=>['required', 'email', 'unique:users'],
            'username'=>['required', 'unique:users'],
            'password'=>['required'],
        ]);

        if ($valid->fails()) return response([
            'err' => $valid->errors(),
        ], 433);

        $dataUser = [
            'email' => $request->email,
            'username' => $request->username,
            'password' => Hash::make($request->password),
            'id_level' => Level::$LEVEL_KONSUMEN,
        ];

        $user = User::create($dataUser);
        $dataKonsumen = [
            'nama_konsumen' => $request->nama_konsumen,
            'alamat_konsumen' => $request->alamat_konsumen,
            'wa_konsumen' => $request->wa_konsumen,
            'id_users' => $user->id
        ];


        $konsumen = Konsumen::create($dataKonsumen);


        return response([
            'msg' => ['berhasil registrasi'],
            'data' => $konsumen,
        ]);

    }

    public function login(Request $request){

        $valid = Validator::make($request->all(), [
            'username' => ['required'],
            'password' => ['required']
        ]);

        if($valid->fails()) return response([
            'err' => $valid->errors(),
        ], 433);

        $user = User::where('username', $request->username)->first();
        if (!isset($user)) return response([
            'err' => ['username tidak sesuai']
        ], 404);

        $login = Hash::check($request->password, $user->password);
        if (!$login) return response([
            'err' => ['passoword tidak sesuai']
        ], 401);


        if($user->api_token == NULL) {
            $apiToken = Str::random(150) . $user->id;
            $dataUpdate = ['api_token' => $apiToken];
            $user->update($dataUpdate);
        }
        Auth::login($user);

        return response([
            'msg' => ['berhasil login'],
            'data' => $user,
            'apiToken' => $user->api_token,
        ]);
    }
}


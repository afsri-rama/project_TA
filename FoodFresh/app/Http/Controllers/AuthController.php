<?php

namespace App\Http\Controllers;

use App\Konsumen;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function loginIndex(){
        return view('auth.login');
    }
    public function login(Request $request){
        $this->validate($request, [
            'username'=>['required'],
            'password'=>['required']
        ]);

        $user = User::where('username', $request->username)->first();

        if(!isset($user)) return redirect()->back()->withDanger('USERNAME BELUM TERDAFTAR') ;

        $login = Hash::check($request->password, $user->password);

        if(!$login) return redirect()->back()->withDanger('PASSWORD SALAH');

        Auth::login($user);

        if($user->id_level == 1) return redirect()->route('admin.home');
        else return redirect()->route('produk_konsumen.index')->withInfo('LOGIN BARHASIL');



    }
    public function logout(){
        Auth::logout();
        return redirect()->route('loginIndex')->withInfo('ANDA LOGOUT');
    }
    public function registerIndex(){
        return view('auth.register');

    }
    public function register(Request $request){
        $this->validate($request, [
            'nama_konsumen'=>['required'],
            'alamat_konsumen'=>['required'],
            'wa_konsumen'=>['required'],
            'email'=>['required', 'email', 'unique:users'],
            'username'=>['required', 'unique:users'],
            'password'=>['required'],
            'CaptchaCode' => 'required|valid_captcha'
        ]);

        $dataUser = [
            'email' => $request->email,
            'username' => $request->username,
            'password' => Hash::make($request->password),
            'id_level' => 2,
        ];

        $user = User::create($dataUser);
        $dataKonsumen = [
            'nama_konsumen' => $request->nama_konsumen,
            'alamat_konsumen' => $request->alamat_konsumen,
            'wa_konsumen' => $request->wa_konsumen,
            'id_users' => $user->id
        ];


        $konsumen = Konsumen::create($dataKonsumen);

        return redirect()->route('loginIndex')->withSuccess('BERHASIL MENAMBAHKAN DATA USERS');
    }



}

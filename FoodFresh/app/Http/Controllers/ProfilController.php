<?php

namespace App\Http\Controllers;

use App\Konsumen;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class ProfilController extends Controller
{
    public function index(){
        $user = Auth::user();
        $konsumen = $user->konsumen;
        $kons = Konsumen::where('id',$konsumen->id)->get();
        return view('konsumen.akun', compact('user','konsumen'));
    }

    public function edit($id)
    {
        $user = User::all();
        $konsumen =Konsumen::find($id);

        return view('konsumen.editprofil', compact('user','konsumen'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'nama_konsumen' => ['required'],
            'id_users' => ['required'],
            'alamat_konsumen' => ['required'],
            'wa_konsumen' => ['required'],
        ]);
        $user = User::all();
        $konsumen = Konsumen::find($id);
        $dataUpdate = [
            'nama_konsumen' => $request->nama_konsumen,
            'id_users' => $request->id_users,
            'alamat_konsumen' => $request->alamat_konsumen,
            'wa_konsumen' => $request->wa_konsumen,
        ];
        $konsumen->update($dataUpdate);
        return redirect()->route('profil.index')->withSuccess('BERHASIL EDIT PROFIL');
    }
}

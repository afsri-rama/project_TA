<?php

namespace App\Http\Controllers;

use App\Level;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index(){
        $users= User::all();
        return view('admin.user.show', compact('users'));
    }

    public function create()
    {
        $level=Level::all();
        return view('admin.user.create', compact('level'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'id_level' => ['required'],
            'username' => ['required'],
            'email' => ['required'],
            'password' => ['required'],
        ]);

        $dataCreate = [
            'id_level' => $request->id_level,
            'username' => $request->username,
            'email' => $request->email,
            'password' => Hash::make($request->password)
        ];

        $users = User::create($dataCreate);

        return redirect()->route('user.index')->withSuccess('BERHASIL MENAMBAHKAN DATA USERS');
    }

    public function edit($id)
    {
        $users = User::find($id);
        $level = Level::all();
        return view('admin.user.edit', compact('users','level'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'id_level' => ['required'],
            'username' => ['required'],
            'email' => ['required'],
            'password' => ['required'],
        ]);
        $users = User::find($id);
        $dataUpdate = [
            'id_level' => $request->id_level,
            'username' => $request->username,
            'email' => $request->email,
            'password' => Hash::make($request->password)
        ];
        $users->update($dataUpdate);
        return redirect()->route('user.index')->withSuccess('BERHASIL EDIT DATA USERS');
    }

    public function destroy($id)
    {
        $users = User::find($id);
        $users->delete();
        return redirect()->route('user.index')->withSuccess('BERHASIL HAPUS DATA USERS');
    }
}

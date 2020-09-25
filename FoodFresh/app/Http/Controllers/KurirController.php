<?php

namespace App\Http\Controllers;

use App\Kurir;
use Illuminate\Http\Request;

class KurirController extends Controller
{
    public function index()
    {
        $kurir = Kurir::all();
        return view('admin.kurir.show', compact('kurir'));
    }

    public function create()
    {
        return view('admin.kurir.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'nama_kurir' => ['required'],
            'wa_kurir' => ['required'],
            'des_kurir' => ['required'],

        ]);

        $dataCreate = [
            'nama_kurir' => $request->nama_kurir,
            'wa_kurir' => $request->wa_kurir,
            'des_kurir' => $request->des_kurir
        ];

        $kurir = Kurir::create($dataCreate);

        return redirect()->route('kurir.index')->withSuccess('BERHASIL MENAMBAHKAN DATA KURIR');;
    }

    public function edit($id)
    {
        $kurir = Kurir::find($id);
        return view('admin.kurir.edit', compact('kurir'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'nama_kurir' => ['required'],
            'wa_kurir' => ['required'],
            'des_kurir' => ['required'],

        ]);
        $kurir = Kurir::find($id);
        $dataUpdate = [
            'nama_kurir' => $request->nama_kurir,
            'wa_kurir' => $request->wa_kurir,
            'des_kurir' => $request->des_kurir
        ];
        $kurir->update($dataUpdate);
        return redirect()->route('kurir.index')->withSuccess('BERHASIL EDIT DATA KURIR');
    }

    public function destroy($id)
    {
        $kurir = Kurir::find($id);
        $kurir->delete();
        return redirect()->route('kurir.index')->withSuccess('BERHASIL HAPUS DATA KURIR');
    }
}

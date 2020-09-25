<?php

namespace App\Http\Controllers;

use App\Distributor;
use Illuminate\Http\Request;

class DistributorController extends Controller
{
    public function index()
    {
        $distributor = Distributor::all();
        return view('admin.distributor.show', compact('distributor'));
    }

    public function create()
    {
        return view('admin.distributor.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'nama_distributor' => ['required'],
            'wa_distributor' => ['required'],
            'des_distributor' => ['required'],

        ]);

        $dataCreate = [
            'nama_distributor' => $request->nama_distributor,
            'wa_distributor' => $request->wa_distributor,
            'des_distributor' => $request->des_distributor
        ];

        $distributor = Distributor::create($dataCreate);

        return redirect()->route('distributor.index')->withSuccess('BERHASIL MENAMBAHKAN DATA DISTRIBUTOR');;
    }

    public function edit($id)
    {
        $distributor = Distributor::find($id);
        return view('admin.distributor.edit', compact('distributor'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'nama_distributor' => ['required'],
            'wa_distributor' => ['required'],
            'des_distributor' => ['required'],

        ]);
        $distributor = Distributor::find($id);
        $dataUpdate = [
            'nama_distributor' => $request->nama_distributor,
            'wa_distributor' => $request->wa_distributor,
            'des_distributor' => $request->des_distributor
        ];
        $distributor->update($dataUpdate);
        return redirect()->route('distributor.index')->withSuccess('BERHASIL EDIT DATA DISTRIBUTOR');
    }

    public function destroy($id)
    {
        $distributor = Distributor::find($id);
        $distributor->delete();
        return redirect()->route('distributor.index')->withSuccess('BERHASIL HAPUS DATA DISTRIBUTOR');
    }

   // public function send($id)
   //{
       // return view('admin.distributor.send');
   // }
}

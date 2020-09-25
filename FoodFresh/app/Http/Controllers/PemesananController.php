<?php

namespace App\Http\Controllers;

use App\Kurir;
use App\Pembayaran;
use App\Pemesanan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PemesananController extends Controller
{
    public function index()
    {
        $pemesanan = Pemesanan::all();
        return view('admin.pemesanan.show', compact('pemesanan'));
    }

    public function edit($id)
    {
        $pemesanan = Pemesanan::find($id);
        $kurir= Kurir::all();
        return view('admin.pemesanan.edit', compact('pemesanan', 'kurir'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'tgl_pemesanan' => ['required'],
            'id_kurir' => ['required'],
            'status_pemesanan' => ['required']
        ]);
        $pemesanan = Pemesanan::find($id);
        $dataUpdate = [
            'tgl_pemesanan' => $request->tgl_pemesanan,
            'id_kurir' => $request->id_kurir,
            'status_pemesanan' => $request->status_pemesanan
        ];
        $pemesanan->update($dataUpdate);
        return redirect()->route('pemesanan.index')->withSuccess('BERHASIL EDIT DATA PEMESANAN');
    }


}

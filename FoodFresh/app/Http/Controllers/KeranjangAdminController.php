<?php

namespace App\Http\Controllers;

use App\Keranjang;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class KeranjangAdminController extends Controller
{
    public function index()
    {
        // $user = Auth::user();
        // $konsumen = $user->konsumen ;
        // $keranjang = Keranjang::where('id_konsumen', $konsumen->id)->where('status_produk', Keranjang::$STATUS_PRODUK_DIPILIH)->orderByDesc('updated_at')->get();
        // $totalSemua = 0 ;

        // foreach ($keranjang as $key => $value) {
        //     $totalSemua += $value->total_harga ;
        // }

        $keranjang=Keranjang::orderByDesc('updated_at')->get();
        return view('admin.keranjang.show', compact('keranjang'));
    }

    public function show()
    {
        // $user = Auth::user();
        // $konsumen = $user->konsumen ;
        // $keranjang = Keranjang::where('id_konsumen', $konsumen->id)->where('status_produk', Keranjang::$STATUS_PRODUK_DIPILIH)->orderByDesc('updated_at')->get();



        $keranjang=Keranjang::orderByDesc('updated_at')->get();
        return view('admin.keranjang.detail', compact('keranjang'));
    }

    public function destroy($id)
    {
        $keranjang = Keranjang::find($id);
        $keranjang->delete();
        return redirect()->route('keranjang_admin.index')->withSuccess('BERHASIL HAPUS DATA KERANJANG');
    }
}

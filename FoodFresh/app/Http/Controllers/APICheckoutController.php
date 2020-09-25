<?php

namespace App\Http\Controllers;

use App\Keranjang;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class APICheckoutController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $konsumen = $user->konsumen;
        $keranjang = Keranjang::where('id_konsumen', $konsumen->id)->where('status_produk', Keranjang::$STATUS_PRODUK_DIPILIH)->get();
        $totalSemua = 0;

        foreach ($keranjang as $key => $value) {
            $totalSemua += $value->total_harga;
        }

        return response([
            'msg' => ['berhasil menampilkan data keranjang'],
            'data' => [
                'keranjang' => $keranjang,
                'totalSemua' => $totalSemua,

            ],
        ]);
    }

    public function pesan(){
        $user = Auth::user();
        $konsumen = $user->konsumen;
        $keranjang = Keranjang::where('id_konsumen', $konsumen->id)->where('status_produk', Keranjang::$STATUS_PRODUK_DIPILIH);

        if($keranjang->count() <= 0)
        return response([
            'err' => ['Data Tidak ada']
        ], 404);
 

        $statusProdukBaru = Keranjang::$STATUS_MENUNGGU_PEMBAYARAN;
        $keranjang->update(['status_produk' => $statusProdukBaru]);

        return response([
            'msg' => ['berhasil menambahkan Pesanan'],
            'data' => $keranjang
        ]);
    }
}

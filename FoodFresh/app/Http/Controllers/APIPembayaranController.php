<?php

namespace App\Http\Controllers;

use App\Keranjang;
use App\Pembayaran;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class APIPembayaranController extends Controller
{
    public function index()
    {
        $pembayaran = Pembayaran::all();
        $user = Auth::user();
        $konsumen = $user->konsumen;
        $keranjang = Keranjang::where('id_konsumen', $konsumen->id)->where('status_produk', Keranjang::$STATUS_PRODUK_DIPILIH)->get();

        if ($keranjang->count() <= 0)
        return response([
            'err' => ['Silahkan Pilih produk terlebih dahulu']
        ], 404);

        $totalSemua = 0;

        foreach ($keranjang as $key => $value) {
            $totalSemua += $value->total_harga;
            $statusProdukBaru = 2;
        }
        return response([
            'msg' => ['berhasil menampilkan data Pembayaran'],
            'data' => [
                'keranjang'=> $keranjang,
                'totalSemua'=> $totalSemua
            ]
        ]);
    }
}

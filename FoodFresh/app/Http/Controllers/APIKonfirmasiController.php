<?php

namespace App\Http\Controllers;

use App\Keranjang;
use App\Pembayaran;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class APIKonfirmasiController extends Controller
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
            'msg' => ['berhasil menampilkan data Pembayaran'],
            'data' => [
                'keranjang' => $keranjang,
                'totalSemua' => $totalSemua
            ]
        ]);
    }

    public function create(Request $request){
        $valid = Validator::make($request->all(), [
            'bukti_pembayaran' => ['required'],
            'tgl_pembayaran' => ['required']
        ]);

        if ($valid->fails()) return response([
            'err' => $valid->errors(),
        ], 433);

        $user = Auth::user();
        $konsumen = $user->konsumen;
        $idKonsumen = $konsumen->id;

        $keranjang = Keranjang::where('id_konsumen', $idKonsumen)->where('status_produk', Keranjang::$STATUS_MENUNGGU_PEMBAYARAN)->get();
        $totalPembayaran = 0;
        foreach ($keranjang as $key => $value) {
            $totalPembayaran += $value->total_harga;
        }

        $buktiPem = $request->file('bukti_pembayaran')->store("bukti/{$konsumen->nama_konsumen}");
        $dataCreate = [
            'id_konsumen' => $idKonsumen,
            'total_pembayaran' => $totalPembayaran,
            'status_pembayaran' => Pembayaran::$STATUS_BAYAR_BELUM_TERKONFIRMASI,
            'tgl_pembayaran' => $request->tgl_pembayaran,
            'bukti_pembayaran' => $buktiPem
        ];


        $pembayaran = Pembayaran::create($dataCreate);
        $keranjang = Keranjang::where('id_konsumen', $konsumen->id)->where('status_produk', Keranjang::$STATUS_MENUNGGU_PEMBAYARAN);

        $statusProdukKeranjang = Keranjang::$STATUS_PEMBAYARAN;
        $keranjang->update(['status_produk' => $statusProdukKeranjang]);

        return response([
            'msg' => ['berhasil konfirmasi'],
            'data' => [
                'pembayaran'=> $pembayaran,
                'keranjang'=> $keranjang

            ]
        ]);
    }
}

<?php

namespace App\Http\Controllers;

use App\Produk;
use App\Keranjang;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class APIKeranjangController extends Controller
{
    public function index(){
        $user = Auth::user();
        $konsumen = $user->konsumen;
        $keranjang = Keranjang::where('id_konsumen', $konsumen->id)->get();
        return response([
            'msg' => ['berhasil menampilkan data keranjang'],
            'data' => $keranjang,
        ]);

    }

    public function addCart(Request $request, $idProduk)
    {
        $valid = Validator::make($request->all(), [
            'total_produk' => 'required|numeric'
        ]);
        if ($valid->fails()) return response([
            'err' => $valid->errors(),
        ], 433);

        $user = Auth::user();
        $idKonsumen = $user->konsumen->id;
        $totalProduk = $request->total_produk;


        $produk = Produk::where('id', $idProduk)->first();
        if (!isset($produk))  return response([
            'err' => ['Produk Tidak Ditemukan']
        ], 404);

        $totalHarga = $produk->harga_produk * $totalProduk;

        $keranjang = Keranjang::where('id_produk', $idProduk)->where('id_konsumen', $idKonsumen)->where('status_produk', Keranjang::$STATUS_PRODUK_DIPILIH)->first();

        if (isset($keranjang)) {
            $totalProduk += $keranjang->total_produk;
            $totalHarga += $keranjang->total_harga;

            $keranjang->update([
                'total_produk' => $totalProduk,
                'total_harga' => $totalHarga,
            ]);
        } else {
            $keranjang = Keranjang::create([
                'id_konsumen' => $idKonsumen,
                'id_produk' => $idProduk,
                'total_produk' => $totalProduk,
                'total_harga' => $totalHarga,
                'status_produk' => Keranjang::$STATUS_PRODUK_DIPILIH,
            ]);
        }

        return response([
            'msg' => ['berhasil menambahkan keranjang'],
            'data' => $keranjang,
        ]);
    }

    public function destroy($id)
    {
        $user = Auth::user();
        $idKonsumen = $user->konsumen->id;
        $keranjang = Keranjang::where('id_konsumen', $idKonsumen)->where('id', $id)->first();
        $keranjang->delete();
        return response([
            'msg' => ['berhasil menghapus data dari keranjang']
        ]);
    }
}

<?php

namespace App\Http\Controllers;

use App\Keranjang;
use App\Pembayaran;
use App\Pemesanan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HistoriController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $keranjang=Keranjang::all();
        $konsumen = $user->konsumen ;
        $keranjang = Keranjang::latest()->where('id_konsumen', $konsumen->id)->get();

        // $keranjang=Keranjang::join('produk','produk.id','=','keranjang.id_produk')
        //             ->select('keranjang.id_produk','keranjang.total_produk','keranjang.total_harga',
        //             'keranjang.updated_at','keranjang.status_produk')->where('keranjang.id_konsumen',$konsumen->id)->get();

        // foreach ($keranjang as $key => $value) {
        //     $keranjang[$key]['status_produk'] = $value['status_produk'] == 3 ? 'Sudah Dibayar' : 'Menunggu Pembayaran' ;
        // }

        return view('konsumen.histori', compact('keranjang'));
    }


}

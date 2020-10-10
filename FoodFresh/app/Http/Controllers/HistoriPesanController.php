<?php

namespace App\Http\Controllers;

use App\Keranjang;
use App\Pembayaran;
use App\Pembelian;
use App\Pemesanan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HistoriPesanController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $konsumen = $user->konsumen ;
        $pemesanan = Pemesanan::join('pembayaran', 'pembayaran.id', '=', 'pemesanan.id_pembayaran')
                        ->select('pemesanan.tgl_pemesanan', 'pemesanan.status_pemesanan', 'pemesanan.id_pembayaran', 'pembayaran.bukti_pembayaran', 'pembayaran.total_pembayaran')
                        ->where('pembayaran.id_konsumen', $konsumen->id)
                        ->get();
        
        foreach ($pemesanan as $key => $value) {
           $pemesanan[$key]['status_pemesanan'] = $value['status_pemesanan'] == 1 ? 'Pemesanan' : 'Prosess' ; 
        }

        return view('konsumen.historiPesan', compact('pemesanan'));
    }


    public function show($id){
        $user = Auth::user();
        $konsumen = $user->konsumen;
        $idKonsumen = $konsumen->id ;
        $idPembayaran = $id ;

        $pembelian = Pembelian::where('id_pembayaran', $idPembayaran)->where('id_konsumen', $idKonsumen)->get();
        $dataProduk = [] ;

        $totalPembayaran = 0 ;

        foreach ($pembelian as $key => $value) {
            $keranjang = $value->keranjang ;
            $produk = $keranjang->produk ;
            $dataProduk[$key] = (Object) [
                'total_produk' => $keranjang->total_produk,
                'total_harga' => $keranjang->total_harga,
                'gambar_produk' => $produk->gambar_produk,
                'nama_produk' => $produk->nama_produk ,
            ];
            $totalPembayaran += $keranjang->total_harga ;
        }
        return view('konsumen.historiProduk', compact('dataProduk', 'totalPembayaran')) ;
    }
}

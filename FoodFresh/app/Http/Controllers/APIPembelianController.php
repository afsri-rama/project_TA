<?php

namespace App\Http\Controllers;

use App\Pembelian;
use Illuminate\Http\Request;

class APIPembelianController extends Controller
{
    public function index()
    {
        $pembelian = Pembelian::all();
        $data  = [];

        foreach ($pembelian as $key => $value) {

            $data[$key]['id_pembayaran'] = $value->pembayaran->id ;
            $data[$key]['nama_konsumen'] = $value->konsumen->nama_konsumen ;
            $data[$key]['alamat_konsumen'] = $value->konsumen->alamat_konsumen ;
            $data[$key]['no_hp'] = $value->konsumen->wa_konsumen ;
            $data[$key]['nama_produk'] = $value->keranjang->produk->nama_produk ;
            $data[$key]['total_produk'] = $value->keranjang->total_produk ;
            $data[$key]['harga'] = $value->keranjang->total_harga;
            $data[$key]['total_pembayaran'] = $value->pembayaran->total_pembayaran;
            $data[$key]['tanggal_pesan'] = date("d F Y", strtotime($value->created_at)) ;



        }

        return response([
            'msg' => ['berhasil menampilkan data'],
            'data' => $data

        ]);
    }
}

<?php

namespace App\Http\Controllers;

use App\Distributor;
use App\Keranjang;
use App\Pembelian;
use Carbon\Carbon;
use Illuminate\Http\Request;

class APIDistributorController extends Controller
{
    public function index(){
        $data = [] ;
        $distributor = Distributor::all();
        foreach ($distributor as $key => $value) {
            $data[$key] = $value ;
            $pembelian = Pembelian::all();
            $dataPembelian = [] ;
            foreach ($pembelian as $keyPembeli => $valuePembeli) {
                $keranjang= $valuePembeli->keranjang ;
                $produk = $keranjang->produk ;
                if($produk->id_distributor == $value->id) {

                    $dataPembelian[] = [

                        'nama_konsumen' => $valuePembeli->konsumen->nama_konsumen,
                        'alamat_konsumen' => $valuePembeli->konsumen->alamat_konsumen,
                        'total_produk' => $keranjang->total_produk,
                        'total_harga' => $keranjang->total_harga,
                        'tgl'=> date( "d F Y", strtotime($valuePembeli->created_at)),
                    ];

                }

            }
            $data[$key]['pembelian'] = $dataPembelian ;
            $data[$key]['total_produk'] = count($dataPembelian) ;
            $data[$key]['total_harga'] = 0 ;
            foreach ($dataPembelian as $keyProduk => $valueProduk) {
                $data[$key]['total_harga'] += $valueProduk['total_harga'] ;
            }
        }

        return response([
            'msg' => ['berhasil menampilkan data'],
            'data' => $data,
        ]);

    //pembelian berdasarkan id_distributor
    // $keranjang=Keranjang::all();

    // $pembelian= Pembelian::where("id_keranjang",$keranjang->produk->id_distributor)->get();
    // return response([
    //         'msg' => ['berhasil menampilkan data'],
    //         'data' => $pembelian,
    //     ]);
    }
}

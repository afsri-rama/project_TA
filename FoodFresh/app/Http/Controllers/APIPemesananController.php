<?php

namespace App\Http\Controllers;


use App\Pemesanan;

class APIPemesananController extends Controller
{
    public function index()
    {
        $pemesanan = Pemesanan::orderByDesc('tgl_pemesanan')->get();
        //  $pemesanan = Pemesanan::all();


        $data  = [];

        foreach ($pemesanan as $key => $value) {

            $data[$key]['nama_konsumen'] = $value->pembayaran->konsumen->nama_konsumen;
            $data[$key]['alamat_konsumen'] = $value->pembayaran->konsumen->alamat_konsumen;
            $data[$key]['hp_konsumen'] = $value->pembayaran->konsumen->wa_konsumen;
            if (isset($value->kurir)){
                $data[$key]['nama_kurir'] = $value->kurir->nama_kurir;
                $data[$key]['hp_kurir'] = $value->kurir->wa_kurir;
            }else $data[$key]['nama_kurir'] = '';

            // $data[$key]['alamat_kurir'] = $value->kurir->alamat_kurir;
            $data[$key]['tgl_pengantaran'] = date("d F Y", strtotime($value->tgl_pemesanan));
            if($value->status_pemesanan =='0'){
                $data[$key]['status'] = 'Proses';
            } else $data[$key]['status'] = 'Selesai';


        }

        return response([
            'msg' => ['berhasil menampilkan data'],
            'data' => $data

        ]);
    }
}

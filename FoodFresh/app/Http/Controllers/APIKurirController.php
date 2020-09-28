<?php

namespace App\Http\Controllers;

use App\Kurir;
use Illuminate\Http\Request;

class APIKurirController extends Controller
{
    public function indexApi()
    {
        $data = [] ;
        $kurir = Kurir::all();
        foreach ($kurir as $key => $value) {
            $data[$key] = $value ;
            foreach ($value->pemesanan as $keyPesan => $valuePesan) {
                $konsumen = $valuePesan->pembayaran->konsumen ;
                $data[$key]['pemesanan'][$keyPesan] = $konsumen ;
            }
        }
        return response([
            'msg' => ['berhasil menampilkan data'],
            'data' => $data,
        ]);
    }
}

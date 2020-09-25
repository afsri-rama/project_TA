<?php

namespace App\Http\Controllers;

use App\Produk;
use Illuminate\Http\Request;

class APIProdukController extends Controller
{
    public function index()
    {
        $produk = Produk::all();
        return response([
            'msg' => ['berhasil menampilkan data produk'],
            'data' => $produk,
        ]);
    }
}

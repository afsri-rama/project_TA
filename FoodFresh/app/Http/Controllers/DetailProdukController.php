<?php

namespace App\Http\Controllers;

use App\Produk;
use Illuminate\Http\Request;

class DetailProdukController extends Controller
{
    public function getDetail($idProduk)
    {
        $produk = Produk::find($idProduk);
        return view('konsumen.detail', compact('produk'));
    }
}

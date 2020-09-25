<?php

namespace App\Http\Controllers;

use App\Kategori;
use App\Produk;
use Illuminate\Http\Request;

class ProdukKonumenController extends Controller
{
    public function index(Request $request)
    {

        $produk = new Produk();
        if(isset($request->kategori)) $produk = Produk::where('id_kategori', $request->kategori);
        if(isset($request->cari)) {
            if($request->cari != '') $produk = Produk::where('nama_produk', 'like', '%' . $request->cari . '%');
        }

        $produk = $produk->get();


        return view('konsumen.produk', compact('produk'));
    }



}

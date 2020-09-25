<?php

namespace App\Http\Controllers;

use App\Kategori;
use App\Produk;
use Illuminate\Http\Request;

class KategoriKonsumenController extends Controller
{
    public function index()
    {
        $produk=Produk::all();
        $kategori = Kategori::all();
        return view('konsumen.partials.featured', compact('kategori', 'produk'));
    }


}

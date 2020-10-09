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
        $keranjang = Keranjang::where('id_konsumen', $konsumen->id)->get();

        return view('konsumen.histori', compact('keranjang'));
    }


}

<?php

namespace App\Http\Controllers;

use App\Keranjang;
use App\Pembayaran;
use App\Pemesanan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HistoriPesanController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $pembayaran= Pembayaran::all();
        $konsumen = $user->konsumen ;
        $pemesanan = Pemesanan::where('id_konsumen', $pembayaran->$konsumen->id)->get();

        return view('konsumen.historiPesan', compact('pemesanan'));
    }
}

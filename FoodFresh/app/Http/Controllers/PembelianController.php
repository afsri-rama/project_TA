<?php

namespace App\Http\Controllers;

use App\Keranjang;
use App\Konsumen;
use App\Pembayaran;
use App\Pembelian;
use App\Pemesanan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PembelianController extends Controller
{
    public function index(){
        $pembelian = Pembelian::all();

        return view('admin.pembelian.show', compact('pembelian'));
    }
    public function show($id){
        $pembelian = Pembayaran::find($id)->pembelian;
        return view('admin.pembelian.show', compact('pembelian'));
    }
}

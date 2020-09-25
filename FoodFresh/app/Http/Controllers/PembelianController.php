<?php

namespace App\Http\Controllers;

use App\Keranjang;
use App\Konsumen;
use App\Pembayaran;
use App\Pembelian;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PembelianController extends Controller
{
    public function index(){
        $pembelian = Pembelian::all();

        return view('admin.pembelian.show', compact('pembelian'));
    }
}

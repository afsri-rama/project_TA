<?php

namespace App\Http\Controllers;

use App\Keranjang;
use App\Konsumen;
use App\Pembayaran;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PembayaranController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pembayaran=Pembayaran::all();
        $user = Auth::user();
        $konsumen = $user->konsumen;
        $keranjang = Keranjang::where('id_konsumen', $konsumen->id)->where('status_produk', Keranjang::$STATUS_PRODUK_DIPILIH)->get();

        if($keranjang->count() <= 0) return redirect()->route('produk_konsumen.index')->withInfo('Tidak ada produk yang dipilih, silahkan pilih produk telebih dahulu !');

        $totalSemua = 0;

        foreach ($keranjang as $key => $value) {
            $totalSemua += $value->total_harga;
            // $statusProdukBaru = 2;
        }

        return view('konsumen.pembayaran', compact('keranjang', 'totalSemua','pembayaran'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}

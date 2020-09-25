<?php

namespace App\Http\Controllers;

use App\Keranjang;
use App\Produk;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class KeranjangController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = Auth::user();
        $konsumen = $user->konsumen ;
        $keranjang = Keranjang::where('id_konsumen', $konsumen->id)->where('status_produk', Keranjang::$STATUS_PRODUK_DIPILIH)->get();
        $totalSemua = 0 ;

        foreach ($keranjang as $key => $value) {
            $totalSemua += $value->total_harga ;
        }

        return view('konsumen.keranjang', compact('keranjang', 'totalSemua'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
        //
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
        $user = Auth::user();
        $idKonsumen = $user->konsumen->id;
        $keranjang = Keranjang::where('id_konsumen', $idKonsumen)->where('id',$id)->first();
        $keranjang->delete();
        return redirect()->route('keranjang.index')->withSuccess('BERHASIL HAPUS PRODUK');
    }

    public function addCart(Request $request, $idProduk){
        $this->validate($request,[
            'total_produk' => 'required|numeric'
        ]);

        $user = Auth::user();
        $idKonsumen = $user->konsumen->id ;
        $totalProduk = $request->total_produk ;


        // $produk = Produk::find($idProduk);
        $produk = Produk::where('id', $idProduk)->first();

        if (!isset($produk))  return redirect()->back()->withDanger('Produk Tidak Ada');

        $totalHarga = $produk->harga_produk * $totalProduk ;

        $keranjang = Keranjang::where('id_produk', $idProduk)->where('id_konsumen', $idKonsumen)->where('status_produk', Keranjang::$STATUS_PRODUK_DIPILIH)->first();

        if(isset($keranjang)) {
            $totalProduk += $keranjang->total_produk ;
            $totalHarga += $keranjang->total_harga ;

            $keranjang->update([
                'total_produk' => $totalProduk,
                'total_harga' => $totalHarga,
            ]);
        } else {
            $keranjang = Keranjang::create([
                'id_konsumen' => $idKonsumen,
                'id_produk' => $idProduk,
                'total_produk' => $totalProduk,
                'total_harga' => $totalHarga,
                'status_produk' => Keranjang::$STATUS_PRODUK_DIPILIH,
            ]);
        }

        return redirect()->back()->withSuccess('BERHASIL MENAMBAHAN PRODUK PADA KERANJANG');

    }
}

<?php

namespace App\Http\Controllers;

use App\Keranjang;
use App\Konsumen;
use App\Pembayaran;
use App\Pembelian;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class KonfirmasiController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $konsumen = $user->konsumen;
        $keranjang = Keranjang::where('id_konsumen', $konsumen->id)->where('status_produk', Keranjang::$STATUS_PRODUK_DIPILIH)->get();
        $totalSemua = 0;

        foreach ($keranjang as $key => $value) {
            $totalSemua += $value->total_harga;
            $statusProdukBaru = 2;
        }

        if($statusProdukBaru==2){
            $konfirmasi = Pembayaran::where('id_konsumen', $konsumen->id)->where('status_pembayaran', Pembayaran::$STATUS_BAYAR_BELUM_TERKONFIRMASI)->get();

            foreach ($konfirmasi as $statusPemBaru) {
                $statusPemBaru = 1;
            }
        }


        return view('konsumen.konfirmasi', compact('pembayaran', 'totalSemua','statusPemBaru'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $user = Auth::user();
        $konsumen = $user->konsumen;
        $keranjang = Keranjang::where('id_konsumen', $konsumen->id)->where('status_produk', Keranjang::$STATUS_MENUNGGU_PEMBAYARAN)->get();

        if($keranjang->count() <= 0) return redirect()->route('produk_konsumen.index')->withInfo('Silahkan pilih produk belanjan terlebih dahulu');

        $totalSemua = 0;
        foreach ($keranjang as $key => $value) {
            $totalSemua += $value->total_harga;
            $statusProdukBaru = 2;
        }

        // if ($statusProdukBaru == 2) {
        //     $konfirmasi = Pembayaran::where('id_konsumen', $konsumen->id)->where('status_pembayaran', Pembayaran::$STATUS_BAYAR_BELUM_TERKONFIRMASI)->get();

        //     foreach ($konfirmasi as $statusPemBaru) {
        //         $statusPemBaru = 1;
        //     }
        // }

        $pembayaran = Pembayaran::all();
        return view('konsumen.konfirmasi', compact('pembayaran', 'konsumen','totalSemua'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'bukti_pembayaran' => ['required'],
            'tgl_pembayaran' => ['required']
        ]);

        $user = Auth::user();
        $konsumen = $user->konsumen ;
        $idKonsumen = $konsumen->id ;

        $keranjang = Keranjang::where('id_konsumen', $idKonsumen)->where('status_produk', Keranjang::$STATUS_MENUNGGU_PEMBAYARAN)->get();
        $totalPembayaran = 0;
        foreach ($keranjang as $key => $value) {
            $totalPembayaran += $value->total_harga;
        }

        $buktiPem = $request->file('bukti_pembayaran')->store("bukti/{$konsumen->nama_konsumen}");
        $dataCreate = [
            'id_konsumen' => $idKonsumen,
            'total_pembayaran' => $totalPembayaran,
            'status_pembayaran' => Pembayaran::$STATUS_BAYAR_BELUM_TERKONFIRMASI,
            'tgl_pembayaran' => $request->tgl_pembayaran,
            'bukti_pembayaran' => $buktiPem
        ];

        // $pembayaran = Pembayaran::where('id_konsumen', $idKonsumen)->where('status_pembayaran', Pembayaran::$STATUS_BAYAR_BELUM_TERKONFIRMASI)->first();

        // if(isset($pembayaran)) return redirect()->route('produk_konsumen.index')->withSuccess('PEMBAYARAN TERKONFIRMASI');

        $pembayaran = Pembayaran::create($dataCreate);
        // {}
        $keranjang = Keranjang::where('id_konsumen', $konsumen->id)->where('status_produk', Keranjang::$STATUS_MENUNGGU_PEMBAYARAN);

        $statusProdukKeranjang = Keranjang::$STATUS_PEMBAYARAN ;
        $keranjang->update(['status_produk' => $statusProdukKeranjang ]);

        // foreach ($keranjang->get() as $key => $value) {
        //     $pembelian = Pembelian::create([
        //         'id_konsumen'=> $idKonsumen,
        //         'id_keranjang'=> $value->id,
        //         'id_pembayaran'=> $pembayaran->id
        //     ]);
        // }

        return redirect()->route('produk_konsumen.index')->withSuccess('PEMBAYARAN TERKONFIRMASI');
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

<?php

namespace App\Http\Controllers;

use App\Keranjang;
use App\Konsumen;
use App\Pembayaran;
use App\Pembelian;
use App\Pemesanan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PembayaranAdminController extends Controller
{
    public function index()
    {
        $pembayaran = Pembayaran::all();

        return view('admin.pembayaran.show', compact('pembayaran'));
    }

    public function edit($id)
    {
        // $user = Auth::user();
        // $konsumen = $user->konsumen;
        // $pembayaran = Pembayaran::find($id);
        // $konfirmasi = Pembayaran::where('status_pembayaran', Pembayaran::$STATUS_BAYAR_BELUM_TERKONFIRMASI)->get();

        // foreach ($konfirmasi as $statusPemBaru) {
        //     $statusPemBaru = Pembayaran::$STATUS_BAYAR_TERKONFIRMASI;
        // }
        //  return view('admin.pembayaran.show', compact('pembayaran','konsumen', 'statusPemBaru'));
    }

    public function konfirmasi($id_pembayaran)
    {

        $pembayaran = Pembayaran::where('id', $id_pembayaran)->where('status_pembayaran', Pembayaran::$STATUS_BAYAR_BELUM_TERKONFIRMASI)->first();

        if(! isset($pembayaran)) return redirect()->back()->withDanger('Data Tidak Berhasil Diupdate!');

        $statusPemBaru = Pembayaran::$STATUS_BAYAR_TERKONFIRMASI;
        $pembayaran->update(['status_pembayaran' => $statusPemBaru]);

        $idPembayaran = $pembayaran->id;
        $tglPemesanan = date('Y-m-d');
        $statusPemesanan = Pemesanan::$STATUS_PESAN_PROSES;

        $pemesananCreate=[
            'id_pembayaran'=> $idPembayaran,
            'tgl_pemesanan'=> $tglPemesanan,
            'status_pemesanan'=>$statusPemesanan
        ];

        $pemesanan = Pemesanan::create($pemesananCreate);

        $keranjang=Keranjang::where('id_konsumen', $pembayaran->id_konsumen)->where('status_produk', Keranjang::$STATUS_PEMBAYARAN)->get();


        foreach ($keranjang as $key => $value) {
            $pembelian = Pembelian::create([
                'id_konsumen' => $pembayaran->id_konsumen,
                'id_keranjang' => $value->id,
                'id_pembayaran' => $pembayaran->id
            ]);
        }


        return redirect()->route('pembayaran_admin.index')->withSuccess('Berhasil Konfirmasi Pembayaran ');
    }

    public function update(Request $request, $id)
    {
        // $this->validate($request, [
        //     'id_konsumen' => ['required'],
        //     'status_pembayaran' => ['required'],
        // ]);
        // $pembayaran = Pembayaran::find($id);
        // $konfirmasi = Pembayaran::$STATUS_BAYAR_TERKONFIRMASI;

        // $dataUpdate = [
        //     'id_konsumen' => $request->id_konsumen,
        //     'status_pembayaran' => $konfirmasi
        // ];
        // $pembayaran->update($dataUpdate);
        // return redirect()->route('pembayaran.index')->withSuccess('BERHASIL KONFIRMASI PEMBAYARAN');

        // $user = Auth::user();
        // $konsumen = $user->konsumen;
        // $pembayaran = Pembayaran::find($id);
        // $konfirmasi = Pembayaran::where('status_pembayaran', Pembayaran::$STATUS_BAYAR_BELUM_TERKONFIRMASI)->get();

        // foreach ($konfirmasi as $statusPemBaru) {
        //     $statusPemBaru = Pembayaran::$STATUS_BAYAR_TERKONFIRMASI;
        // }
        // $pembayaran->update($statusPemBaru);
        // return redirect($statusPemBaru)->route('pembayaran.index')->withSuccess('BERHASIL KONFIRMASI PEMBAYARAN');
    }
}

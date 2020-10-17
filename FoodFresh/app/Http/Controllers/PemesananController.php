<?php

namespace App\Http\Controllers;

use App\Kurir;
use App\Pembayaran;
use App\Pemesanan;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PemesananController extends Controller
{
    public function index(Request $request)
    {
        // $pemesanan = Pemesanan::all();


         $pemesanan = new Pemesanan();
        if(isset($request->pemesanan)) $pemesanan = Pemesanan::where('tgl_pemesanan', $request->tgl_pemesanan);

        $pemesanan = $pemesanan->get();
        return view('admin.pemesanan.show', compact('pemesanan'));

        // $start = Carbon::now()->startOfMonth()->format('Y-m-d H:i:s');
        // $end = Carbon::now()->endOfMonth()->format('Y-m-d H:i:s');

        // if(request()->date !=''){
        //     $date = explode(' - ' ,request()->date);
        //     $start = Carbon::parse($date[0])->format('Y-m-d') . ' 00:00:01';
        //     $end = Carbon::parse($date[1])->format('Y-m-d') . ' 23:59:59';
        // }

        // // $orders = Order::with(['customer.district'])->whereBetween('created_at', [$start, $end])->get();
        // $pemesanan = Pemesanan::where('tgl_pemesanan',[$start, $end])->get();
        // return view('admin.pemesanan.show', compact('pemesanan'));
    }

    // public function filter()
    // {
    //     $start = Carbon::now()->startOfMonth()->format('Y-m-d H:i:s');
    //     $end = Carbon::now()->endOfMonth()->format('Y-m-d H:i:s');

    //     if(request()->date !=''){
    //         $date = explode(' - ' ,request()->date);
    //         $start = Carbon::parse($date[0])->format('Y-m-d') . ' 00:00:01';
    //         $end = Carbon::parse($date[1])->format('Y-m-d') . ' 23:59:59';
    //     }

    //     // $orders = Order::with(['customer.district'])->whereBetween('created_at', [$start, $end])->get();
    //     $pemesanan = Pemesanan::whereBetween('tgl_pemesanan',[$start, $end])->get();
    //     return view('admin.pemesanan.show', compact('pemesanan'));
    // }

    public function edit($id)
    {
        $pemesanan = Pemesanan::find($id);
        $kurir= Kurir::all();
        return view('admin.pemesanan.edit', compact('pemesanan', 'kurir'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'tgl_pemesanan' => ['required'],
            'id_kurir' => ['required'],
            'status_pemesanan' => ['required']
        ]);
        $pemesanan = Pemesanan::find($id);
        $dataUpdate = [
            'tgl_pemesanan' => $request->tgl_pemesanan,
            'id_kurir' => $request->id_kurir,
            'status_pemesanan' => $request->status_pemesanan
        ];
        $pemesanan->update($dataUpdate);
        return redirect()->route('pemesanan.index')->withSuccess('BERHASIL EDIT DATA PEMESANAN');
    }


}

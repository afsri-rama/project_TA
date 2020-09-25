<?php

namespace App\Http\Controllers;

use App\Distributor;
use App\Produk;
use App\Kategori;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use File;
use Illuminate\Support\Facades\Storage;

class ProdukController extends Controller
{
    public function index()
    {
        $produk = Produk::all();



        return view('admin.produk.show', compact('produk'));
    }

    public function create()
    {
        $kategori = Kategori::all();
        $distributor = Distributor::all();
        return view('admin.produk.create', compact('kategori', 'distributor'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'gambar_produk' => ['required'],
            'nama_produk' => ['required'],
            'id_kategori' => ['required'],
            'harga_produk' => ['required'],
            'des_produk' => ['required'],
            'id_distributor'=>['required']
        ]);

            $gambarProduk = $request->file('gambar_produk')->store('produk');


            $dataCreate = [
                'gambar_produk' => $gambarProduk,
                'nama_produk' => $request->nama_produk,
                'id_kategori' => $request->id_kategori,
                'harga_produk' => $request->harga_produk,
                'des_produk' => $request->des_produk,
                'id_distributor' => $request->id_distributor
            ];

            $produk = Produk::create($dataCreate);


        return redirect()->route('produk.index')->withSuccess('BERHASIL MENAMBAHKAN DATA PRODUK');
    }

    public function edit($id)
    {
        $kategori=Kategori::all();
        $distributor=Distributor::all();
        $produk = Produk::find($id);
        return view('admin.produk.edit', compact('produk', 'kategori', 'distributor'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'nama_produk' => ['required'],
            'id_kategori' => ['required'],
            'harga_produk' => ['required'],
            'des_produk' => ['required'],
            'id_distributor'=>['required']
        ]);
        $produk = Produk::find($id);
        $gambarProduk = $produk->gambar_produk ;
        if(isset($request->gambar_produk)){
            Storage::delete($gambarProduk);
            $gambarProduk = $request->file('gambar_produk')->store('produk');
        }
        $dataUpdate = [
            'gambar_produk' => $gambarProduk,
            'nama_produk' => $request->nama_produk,
            'id_kategori' => $request->id_kategori,
            'harga_produk' => $request->harga_produk,
            'des_produk' => $request->des_produk,
            'id_distributor'=>$request->id_distributor
        ];
        $produk->update($dataUpdate);
        return redirect()->route('produk.index')->withSuccess('BERHASIL EDIT DATA PRODUK');
    }

    public function destroy($id)
    {
        $produk = Produk::find($id);
        Storage::delete($produk->gambar_produk);
        //File:: delete(storage_path('app/public/produk/' . $produk->gambar_produk));
        $produk->delete();
        return redirect()->route('produk.index')->withSuccess('BERHASIL HAPUS DATA PRODUK');
    }


}

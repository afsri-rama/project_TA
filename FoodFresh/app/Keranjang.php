<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Keranjang extends Model
{
    public static $STATUS_PRODUK_DIPILIH = 1 ;
    public static $STATUS_MENUNGGU_PEMBAYARAN = 2 ;
    public static $STATUS_PEMBAYARAN = 3 ;
    public static $STATUS_BATAL_PILIH = 0 ;
    protected $table = "keranjang";
    protected $fillable = [
        'id_konsumen',
        'id_produk',
        'total_produk',
        'total_harga',
        'status_produk',
    ];

    public function konsumen(){
        return $this->belongsTo('App\Konsumen', 'id_konsumen');
    }

    public function produk()
    {
        return $this->belongsTo('App\Produk', 'id_produk');
    }
}

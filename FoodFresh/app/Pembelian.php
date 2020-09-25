<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pembelian extends Model
{
    protected $table = "pembelian";
    protected $fillable = [
        'id_konsumen',
        'id_keranjang',
        'id_pembayaran'
    ];

    public function konsumen()
    {
        return $this->belongsTo('App\Konsumen', 'id_konsumen');
    }

    public function keranjang()
    {
        return $this->belongsTo('App\Keranjang', 'id_keranjang');
    }

    public function pembayaran()
    {
        return $this->belongsTo('App\Pembayaran', 'id_pembayaran');
    }
}

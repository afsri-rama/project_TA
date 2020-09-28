<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pembayaran extends Model
{
    public static $STATUS_BAYAR_BELUM_TERKONFIRMASI = 0;
    public static $STATUS_BAYAR_TERKONFIRMASI = 1;
    protected $table = "pembayaran";
    protected $fillable = [
        'id_konsumen',
        'total_pembayaran',
        'status_pembayaran',
        'tgl_pembayaran',
        'bukti_pembayaran'
    ];

    public function konsumen(){
        return $this->belongsTo('App\Konsumen', 'id_konsumen');
    }

    public function keranjang()
    {
        return $this->belongsTo('App\Keranjang', 'id_keranjang');
    }

    public function pembelian(){
        return $this->hasMany('App\Pembelian', 'id_pembayaran');
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pemesanan extends Model
{
    public static $STATUS_PESAN_PROSES= 0;
    public static $STATUS_PESAN_SELESAI= 1;
    protected $table = "pemesanan";
    protected $fillable = [
        'id_pembayaran',
        'id_kurir',
        'tgl_pemesanan',
        'status_pemesanan',
    ];

    public function pembayaran(){
        return $this->belongsTo('App\Pembayaran', 'id_pembayaran');
    }

    public function kurir(){
        return $this->belongsTo('App\Kurir', 'id_kurir');
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Konsumen extends Model
{
    protected $table = "konsumen";
    protected $fillable = [
        'id_users',
        'nama_konsumen',
        'alamat_konsumen',
        'wa_konsumen',
    ];

    public function users(){
        return $this->belongsTo('App\User', 'id_users');
    }
}

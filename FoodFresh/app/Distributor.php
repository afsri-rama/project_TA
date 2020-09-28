<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Distributor extends Model
{
    protected $table = "distributor" ;
    protected $fillable = [
        'nama_distributor',
        'wa_distributor',
        'des_distributor',
    ];

    public function produk(){
        return $this->hasMany('App\Produk', 'id_distributor');
    }
}

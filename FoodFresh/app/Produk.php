<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Produk extends Model
{
    protected $table= "produk";
    protected $fillable = [
        'gambar_produk',
        'nama_produk',
        'id_kategori',
        'harga_produk',
        'des_produk',
        'id_distributor'
    ];

    public function kategori(){
        return $this->belongsTo('App\Kategori', 'id_kategori');
    }

    public function distributor(){
        return $this->belongsTo('App\Distributor', 'id_distributor');
    }

    protected $guarded = [];

    public function setSlugAttribute($value)
    {
        $this->attributes['slug'] = Str::slug($value);
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kurir extends Model
{
    protected $table = "kurir";
    protected $fillable = [
        'nama_kurir',
        'wa_kurir',
        'des_kurir',
    ];
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Level extends Model
{
    public static $LEVEL_ADMIN = 1;
    public static $LEVEL_KONSUMEN = 2;

    protected $table = "level";
    protected $fillable = [
        'nama_level',
        'deskripsi_level',
    ];
}

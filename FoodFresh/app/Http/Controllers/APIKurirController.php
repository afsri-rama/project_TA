<?php

namespace App\Http\Controllers;

use App\Kurir;
use Illuminate\Http\Request;

class APIKurirController extends Controller
{
    public function indexApi()
    {
        $kurir = Kurir::all();
        return response([
            'msg' => ['berhasil menampilkan data'],
            'data' => $kurir,
        ]);
    }
}

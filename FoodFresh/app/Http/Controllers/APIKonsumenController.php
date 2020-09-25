<?php

namespace App\Http\Controllers;

use App\Konsumen;
use Illuminate\Http\Request;

class APIKonsumenController extends Controller
{
    public function index(){
        $konsumen = Konsumen::all() ;
        return response([
            'msg' => ['berhasil menampilkan data'],
            'data' => $konsumen,
        ]) ;
    }
}

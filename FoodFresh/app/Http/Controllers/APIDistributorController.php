<?php

namespace App\Http\Controllers;

use App\Distributor;
use Illuminate\Http\Request;

class APIDistributorController extends Controller
{
    public function index(){
        $distributor = Distributor::all();
        return response([
            'msg' => ['berhasil menampilkan data'],
            'data' => $distributor,
        ]);
    }
}

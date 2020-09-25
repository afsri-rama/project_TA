<?php

namespace App\Http\Controllers;

use App\Konsumen;
use Illuminate\Http\Request;

class KonsumenController extends Controller
{
    public function index()
    {
        $konsumen = Konsumen::all();
        return view('admin.konsumen.show', compact('konsumen'));
    }
}

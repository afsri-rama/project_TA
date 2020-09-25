<?php

namespace App\Http\Controllers;

use App\Level;
use Illuminate\Http\Request;

class LevelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $level = Level::all();
        return view('admin.level.show', compact('level'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.level.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'nama_level' => ['required'],
            'deskripsi_level' => ['required'],
        ]);

        $dataCreate = [
            'nama_level' => $request->nama_level,
            'deskripsi_level' => $request->deskripsi_level
        ];

        $level = Level::create($dataCreate);

        return redirect()->route('level.index')->withSuccess('BERHASIL MENAMBAHKAN DATA LEVEL');;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $level = Level::find($id);
        return view('admin.level.edit', compact('level'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'nama_level' => ['required'],
            'deskripsi_level' => ['required'],
        ]);
        $level = Level::find($id);
        $dataUpdate = [
            'nama_level' => $request->nama_level,
            'deskripsi_level' => $request->deskripsi_level
        ];
        $level->update($dataUpdate);
        return redirect()->route('level.index')->withSuccess('BERHASIL EDIT DATA LEVEL');;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $level = Level::find($id);
        $level->delete();
        return redirect()->route('level.index')->withSuccess('BERHASIL HAPUS DATA LEVEL');
    }
}

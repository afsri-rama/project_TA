@extends('admin.welcome')
@section('title')
    PEMBELIAN
@endsection
@section('content')
    <table class="table">
        <thead>
            <tr>
                <th> No </th>
                <th> Nama Konsumen </th>
                <th> Nama Produk</th>
                <th> Jumlah Produk</th>
            </tr>
        </thead>
        <tbody>
            @php
                $index = 1 ;
            @endphp
            @foreach ( $pembelian  as $item)
                <tr>
                    <td style="width: 2% ;"> {{$index++}} </td>
                    <td> {{$item->konsumen->nama_konsumen}} </td>
                    <td> {{$item->keranjang->produk->nama_produk}} </td>
                    <td> {{$item->keranjang->total_produk }} </td>
                </tr>
            @endforeach
        </tbody>
    </table>

@endsection

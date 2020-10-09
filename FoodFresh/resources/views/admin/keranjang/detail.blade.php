@extends('admin.welcome')
@section('title')
    PEMBELIAN
@endsection
@section('content')
    <table class="table">
        <thead>
            <tr>
                <th> No </th>
                <th> Nama Produk</th>
                <th> Total Produk</th>
                <th> Total Harga</th>
            </tr>
        </thead>
        <tbody>
            @php
                $index = 1 ;
            @endphp
            @foreach ( $keranjang  as $item)
                <tr>
                    <td style="width: 2% ;"> {{$index++}} </td>
                    <td> {{$item->produk->nama_produk}} </td>
                    <td> {{$item->total_produk }} </td>
                    <td> {{$item->total_harga }} </td>
                </tr>
            @endforeach
        </tbody>
    </table>

@endsection

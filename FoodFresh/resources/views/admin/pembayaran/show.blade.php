@extends('admin.welcome')
@section('title')
    PEMBAYARAN
@endsection
@section('content')
    <table class="table">
        <thead>
            <tr>
                <th> No </th>
                <th> ID </th>
                <th> Nama Konsumen </th>
                <th> Total Pembayaran </th>
                <th> Tanggal Pembayaran </th>
                <th> Bukti  </th>
                <th> Status </th>
                <th> Aksi  </th>
                <th>  </th>
            </tr>
        </thead>
        <tbody>
            @php
                $index = 1 ;
            @endphp
            @foreach ( $pembayaran  as $item)
                <tr>
                    <td style="width: 2% ;"> {{$index++}} </td>
                    <td> {{$item->id}} </td>
                    <td> {{$item->konsumen->nama_konsumen}} </td>
                    <td> {{$item->total_pembayaran}} </td>
                    <td> {{$item->tgl_pembayaran}} </td>
                    <td> <img src="{{asset('app/'. $item->bukti_pembayaran)}}"  width="50px" height="50px" alt="{{ $item->konsumen->nama_konsumen }}"></td>
                    <td> {{$item->status_pembayaran ? 'Terkonfirmasi' : 'Belum Terkonfimrasi'}} </td>
                    <td> 
                        <a href="{{route('pembelian.show', $item->id)}}" class="btn btn-xs btn-info"> Detail Pemesanan </a>
                        <form action="{{route('pembayaran_admin.konfirmasi', $item->id)}}" method="post">
                                @csrf
                                @method('PUT')
                            <button type="submit" class="btn btn-xs btn-info">Konfirmasi</button>
                        </form>
                    </td>

                </tr>
            @endforeach
        </tbody>
    </table>

@endsection

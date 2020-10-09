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
                    <td  width='5%'> 
                        
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-sm btn-default" data-toggle="modal" data-target="#exampleModalScrollable">
                            <img src="{{asset('app/'. $item->bukti_pembayaran)}}"  width="100%" alt="{{ $item->konsumen->nama_konsumen }}">
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-scrollable" role="document">
                                <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalScrollableTitle"> Prouduk </h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <img src="{{asset('app/'. $item->bukti_pembayaran)}}"  width="100%" alt="{{ $item->konsumen->nama_konsumen }}">
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                                </div>
                            </div>
                        </div>
                    </td>
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

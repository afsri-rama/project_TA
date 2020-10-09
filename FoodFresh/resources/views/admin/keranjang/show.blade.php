@extends('admin.welcome')
@section('title')
    KERANJANG
@endsection
@section('content')
    <table class="table">
        <thead>
            <tr>
                <th> No </th>
                <th> Nama Konsumen </th>
                <th> Nama Produk</th>
                <th> Total Produk</th>
                <th> Total Harga</th>
                <th> Waktu </th>
                {{-- <th> Total Pembayaran </th> --}}
                <th> Status</th>
                <th> Aksi </th>
            </tr>
        </thead>
        <tbody>
            @php
                $index = 1 ;
            @endphp
            @foreach ( $keranjang  as $item)
                <tr>
                    <td style="width: 2% ;"> {{$index++}} </td>
                    <td> {{$item->konsumen->nama_konsumen}} </td>
                    <td> {{$item->produk->nama_produk}} </td>
                    <td> {{$item->total_produk }} </td>
                    <td> {{$item->total_harga }} </td>
                    <td> {{$item->updated_at}} </td>
                    {{-- <td> {{$item->totalSemua}} </td> --}}
                    <td> @if ($item->status_produk==3)
                         Sudah Dibayar
                    @else
                        Menunggu Pembayaran
                    @endif </td>

                    <td>

                         @if ($item->status_produk !=3)

                            <a href="" class="btn btn-danger btn-xs" onclick="
                                    var cfm = confirm('Yakin Akan Menghapus ?');
                                    if(cfm){
                                    event.preventDefault();
                                    document.getElementById('{{$item->id}}').submit();
                                    }
                                "> ❌ </i> Delete</a>
                                </div>
                                <form id='{{$item->id}}' action="{{route('keranjang_admin.destroy',$item->id)}}" style="display:none;" method="post">
                                    @csrf
                                    @method('DELETE')
                                </form>
                        @else
                                -
                        @endif

                    </td>

                </tr>
            @endforeach
        </tbody>
    </table>

@endsection

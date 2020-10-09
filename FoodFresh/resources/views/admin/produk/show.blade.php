@extends('admin.welcome')
@section('title')
    PRODUK
@endsection
@section('content')

    <a href="{{route('produk.create')}}" class="btn btn-xs btn-success"> + TAMBAH PRODUK </a>

    <!-- TABLE UNTUK MENAMPILKAN DATA PRODUK -->
    <table class="table">
        <thead>
            <tr>
                <th>Gambar</th>
                <th>Produk</th>
                <th>Harga</th>
                <th>Nama Distributor</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @php
                $index = 1 ;
            @endphp

            @foreach ($produk as $item)
            <tr>
                 <td  width='5%'> 
                        
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-sm btn-default" data-toggle="modal" data-target="#exampleModalScrollable">
                            <img src="{{asset('app/'. $item->gambar_produk)}}" width="100%" alt="{{ $item->nama_produk }}"> 
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
                                    <img src="{{asset('app/'. $item->gambar_produk)}}" width="100%" alt="{{ $item->nama_produk }}"> 
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                                </div>
                            </div>
                        </div>
                    </td>

                <td>

                <strong>{{ $item->nama_produk }}</strong><br>
                <h6>Kategori: {{ $item->kategori->nama_kategori }}</h6>
                <h6>Berat: {{ $item->des_produk }}</h6></td>

                <td>Rp {{ number_format($item->harga_produk) }}</td>

                <td>{{ $item->distributor->nama_distributor }}</td>
                <td style="width: 50% ;">
                        <div class="btn btn-group btn-group-xs">
                            {{-- edit --}}
                            <a href="{{route('produk.edit', $item->id)}}" class="btn btn-xs btn-info"> ✏ EDIT | SHOW </a>
                            {{-- delete --}}
                            <a href="" class="btn btn-danger btn-xs" onclick="
                                var cfm = confirm('Yakin Akan Menghapus ?');
                                if(cfm){
                                event.preventDefault();
                                document.getElementById('{{$item->id}}').submit();
                                }
                            "> ❌ </i> Delete</a>
                            </div>
                            <form id='{{$item->id}}' action="{{route('produk.destroy',$item->id)}}" style="display:none;" method="post">
                                @csrf
                                @method('DELETE')
                            </form>
                        </div>
                    </td>
            </tr>
            @endforeach
        </tbody>
    </table>
@endsection

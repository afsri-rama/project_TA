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
                <td><img src="{{asset('app/'. $item->gambar_produk)}}"  width="50px" height="50px" alt="{{ $item->nama_produk }}"> </td>

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

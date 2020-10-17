@extends('admin.welcome')
@section('title')
    PEMESANAN
@endsection
@section('content')
    <form action="{{ route('pemesanan.index') }}" name="cari" method="get">
			<label>Pilih Tanggal</label>
			<input type="date" name="tanggal">
			<input type="submit" class="btn btn-xs btn-info" value="FILTER">
	</form>
    <table class="table">
        <thead>
            <tr>
                <th> No </th>
                <th> Nama Konsumen </th>
                <th> Tanggal Pengantaran</th>
                <th> Nama Kurir </th>
                <th> Status Pesanan </th>
                <th> Aksi</th>
                <th> </th>
            </tr>
        </thead>
        <tbody>

            @php
                $index = 1 ;
            @endphp
            @forelse ($pemesanan as $item)
                <tr>
                    <td style="width: 2% ;"> {{$index++}} </td>
                    <td> {{$item->pembayaran->konsumen->nama_konsumen}} </td>
                    <td> {{$item->tgl_pemesanan}} </td>
                    <td> {{{$item->kurir->nama_kurir ?? 'Pilih Kurir'}}} </td>
                    <td> {{$item->status_pemesanan ? 'Selesai' : 'Proses'}} </td>
                    <td>
                        <a href="{{route('pemesanan.edit', $item->id)}}" class="btn btn-xs btn-info"> ✏ EDIT </a>
                    </td>
                </tr>

            @empty
                <tr>
                    <td colspan="6" class="text-center">Tidak ada data</td>
                </tr>
            @endforelse
            {{-- @foreach ( $pemesanan  as $item)
                <tr>
                    <td style="width: 2% ;"> {{$index++}} </td>
                    <td> {{$item->pembayaran->konsumen->nama_konsumen}} </td>
                    <td> {{$item->tgl_pemesanan}} </td>
                    <td> {{{$item->kurir->nama_kurir ?? 'Pilih Kurir'}}} </td>
                    <td> {{$item->status_pemesanan ? 'Selesai' : 'Proses'}} </td>
                    <td>
                        <a href="{{route('pemesanan.edit', $item->id)}}" class="btn btn-xs btn-info"> ✏ EDIT </a>
                    </td>
                </tr>
            @endforeach --}}
        </tbody>
    </table>

@endsection

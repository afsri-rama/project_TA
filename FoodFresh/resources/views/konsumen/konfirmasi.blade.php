@extends('konsumen.welcome2')
@section('content')
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title"> KONFIRMASI PEMBAYARAN </h3>
        </div>
        <form role="form" enctype="multipart/form-data" action="{{route('konfirmasi.store')}}" method="POST">
            @csrf
            <div class="card-body">
                <div class="form-group">
                    <label for="labelinput">Nama Konsumen</label>
                    <input type="text" placeholder="Nama Konsumen" name='nama_konsumen' value='{{auth()->user()->konsumen->nama_konsumen}}'class="form-control {{ $errors->has('nama_konsumen') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('nama_konsumen') }}</span>
                </div>

                <div class="form-group">
                    <label for="total_pembayaran">Total Pembayaran</label>
                    <span style="color: red">RP. {{$totalSemua}}</span>
                </div>

                <div class="form-group">
                    <label for="labelinput">Tanggal pembayaran</label>
                    <input type="date" placeholder="Tanggal pembayaran" name='tgl_pembayaran' class="form-control {{ $errors->has('tgl_pembayaran') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('tgl_pembayaran') }}</span>
                </div>

            <div class="form-group">
                <label for="bukti_pembayaran">Bukti Pembayaran</label>
                <input type="file" name="bukti_pembayaran" class="form-control" value="{{ old('bukti_pembayaran') }}" required>
                <p class="text-danger">{{ $errors->first('bukti_pembayaran') }}</p>
            </div>
            </div>




            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Kirim</button>
            </div>
        </form>
    </div>
@endsection

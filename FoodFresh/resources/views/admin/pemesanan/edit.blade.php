@extends('admin.welcome')
@section('content')
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title"> EDIT PEMESANAN </h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form role="form" action="{{route('pemesanan.update', $pemesanan->id)}}" method="POST">
            @csrf
            @method('PUT')
            <div class="card-body">
                
                <div class="form-group">
                    <label for="labelinput">{{$pemesanan->pembayaran->konsumen->nama_konsumen}}</label>
                </div>
                <div class="form-group">
                    <label for="labelinput">Tanggal Pengantaran</label>
                    <input type="date" value="{{$pemesanan->tgl_pemesanan}}"name='tgl_pemesanan' class="form-control {{ $errors->has('tgl_pemesanan') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('tgl_pemesanan') }}</span>
                </div>
                <div class="form-group">
                    <label for="labelinput">Nama Kurir</label>
                    <select name="id_kurir" class="form-control">
                        @foreach ($kurir as $item)
                            <option value ="{{ $item->id }}"
                                 @if ($item->id == $pemesanan->id_kurir)
                                        selected
                                @endif
                                {{ old('id_kurir') == $item->id ? 'selected':'' }}>{{ $item->nama_kurir }}</option>
                        @endforeach
                    </select>
                    <span class="text-danger">{{ $errors->first('id_kurir') }}</span>
                </div>
                <div class="form-group">
                    <label for="labelinput">Status</label>
                    <select name="status_pemesanan" class="form-control">
                        @foreach (["Proses", "selesai"] as $key => $item)
                            <option value ="{{ $key }}"
                                @if ($key == $pemesanan->status_pemesanan)
                                        selected
                                @endif>
                                {{ $item }}
                            </option>
                        @endforeach
                    </select>
                    <span class="text-danger">{{ $errors->first('status_pemesanan') }}</span>
                </div>
            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
        </form>
    </div>
@endsection

@extends('admin.welcome')
@section('content')
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title"> TAMBAHKAN KURIR </h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form role="form" action="{{route('kurir.store')}}" method="POST">
            @csrf
            <div class="card-body">
                <div class="form-group">
                    <label for="labelinput">Nama Kurir</label>
                    <input type="text" placeholder="NAMA KURIR" name='nama_kurir' class="form-control {{ $errors->has('nama_kurir') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('nama_kurir') }}</span>
                </div>
                <div class="form-group">
                    <label for="labelinput">WA Kurir</label>
                    <input type="text" placeholder="WA KURIR"  value='+62' name='wa_kurir' class="form-control {{ $errors->has('wa_kurir') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('wa_kurir') }}</span>
                </div>
                <div class="form-group">
                    <label for="labelinput">Deskripsi</label>
                    <input type="text" placeholder="DESKRIPSI" name='des_kurir' class="form-control {{ $errors->has('des_kurir') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('des_kurir') }}</span>
                </div>
            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
    </div>
@endsection

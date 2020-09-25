@extends('admin.welcome')
@section('content')
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title"> TAMBAHKAN LEVEL </h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form role="form" action="{{route('level.store')}}" method="POST">
            @csrf
            <div class="card-body">
                <div class="form-group">
                    <label for="labelinput">Nama Level</label>
                    <input type="text" placeholder="NAMA LEVEL" name='nama_level' class="form-control {{ $errors->has('nama_level') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('nama_level') }}</span>
                </div>
                <div class="form-group">
                    <label for="labelinput">Deskripsi Level</label>
                    <input type="text" placeholder="DESKRIPSI LEVEL" name='deskripsi_level' class="form-control {{ $errors->has('deskripsi_level') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('deskripsi_level') }}</span>
                </div>
            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
    </div>
@endsection

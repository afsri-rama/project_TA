@extends('admin.welcome')
@section('content')
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title"> EDIT KATEGORI </h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form role="form" action="{{route('kategori.update', $kategori->id)}}" method="POST">
            @csrf
            @method('PUT')
            <div class="card-body">
                <div class="form-group">
                    <label for="labelinput">KATEGORI</label>
                    <input type="text" value="{{$kategori->nama_kategori}}" placeholder="NAMA KATEGORI" name='nama_kategori' class="form-control {{ $errors->has('nama_kategori') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('nama_kategori') }}</span>
                </div>
            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
    </div>
@endsection
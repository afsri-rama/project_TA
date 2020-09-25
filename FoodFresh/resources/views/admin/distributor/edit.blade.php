@extends('admin.welcome')
@section('content')
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title"> EDIT DISTRIBUTOR </h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form role="form" action="{{route('distributor.update', $distributor->id)}}" method="POST">
            @csrf
            @method('PUT')
            <div class="card-body">
                <div class="form-group">
                    <label for="labelinput">Nama Distributor</label>
                    <input type="text"  value="{{$distributor->nama_distributor}}" placeholder="NAMA DISTRIBUTOR" name='nama_distributor' class="form-control {{ $errors->has('nama_distributor') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('nama_distributor') }}</span>
                </div>
                <div class="form-group">
                    <label for="labelinput">WA Distributor</label>
                    <input type="text" value="{{$distributor->wa_distributor}}" placeholder="WA DISTRIBUTOR" name='wa_distributor' class="form-control {{ $errors->has('wa_distributor') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('wa_distributor') }}</span>
                </div>
                <div class="form-group">
                    <label for="labelinput">Deskripsi</label>
                    <input type="text" value="{{$distributor-> des_distributor}}" placeholder="DESKRIPSI" name='des_distributor' class="form-control {{ $errors->has('des_distributor') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('des_distributor') }}</span>
                </div>
            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
        </form>
    </div>
@endsection

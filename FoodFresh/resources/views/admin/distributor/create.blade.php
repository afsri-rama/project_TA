@extends('admin.welcome')
@section('content')
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title"> TAMBAHKAN DISTRIBUTOR </h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form role="form" action="{{route('distributor.store')}}" method="POST">
            @csrf
            <div class="card-body">
                <div class="form-group">
                    <label for="labelinput">Nama Distributor</label>
                    <input type="text" placeholder="NAMA DISTRIBUTOR" name='nama_distributor' class="form-control {{ $errors->has('nama_distributor') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('nama_distributor') }}</span>
                </div>
                <div class="form-group">
                    <label for="labelinput">WA Distributor</label>
                    <input type="text" placeholder="WA DISTRIBUTOR" value = '+62'name='wa_distributor' class="form-control {{ $errors->has('wa_distributor') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('wa_distributor') }}</span>
                </div>
                <div class="form-group">
                    <label for="labelinput">Deskripsi</label>
                    <input type="text" placeholder="DESKRIPSI" name='des_distributor' class="form-control {{ $errors->has('des_distributor') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('des_distributor') }}</span>
                </div>
            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
    </div>
@endsection

@extends('admin.welcome')
@section('content')
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title"> TAMBAHKAN PRODUK </h3>
        </div>
        <form role="form" enctype="multipart/form-data" action="{{route('produk.store')}}" method="POST">
            @csrf
            <div class="card-body">
                <div class="form-group">
                    <label for="labelinput">Nama Produk</label>
                    <input type="text" placeholder="Nama Produk" name='nama_produk' class="form-control {{ $errors->has('nama_produk') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('nama_produk') }}</span>
                </div>

                <div class="form-group">
                    <label for="id_kategori">Kategori</label>

                    <select name="id_kategori" class="form-control">
                        <option value="">Pilih</option>
                        @foreach ($kategori as $item)
                            <option value="{{ $item->id }}" {{ old('id_kategori') == $item->id ? 'selected':'' }}>{{ $item->nama_kategori }}</option>
                        @endforeach
                    </select>
                    <p class="text-danger">{{ $errors->first('id_kategori')}}</p>
                </div>

                <div class="form-group">
                    <label for="labelinput">Harga</label>
                    <input type="text" placeholder="Harga" name='harga_produk' class="form-control {{ $errors->has('harga_produk') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('harga_produk') }}</span>
                </div>

                <div class="form-group">
                    <label for="labelinput">Deskripsi</label>
                    <textarea style=" height:200px" type="text" placeholder="Deskripsi" name='des_produk' class="form-control {{ $errors->has('des_produk') ? 'is-invalid' : '' }}"></textarea>
                    <span class="text-danger">{{ $errors->first('des_produk') }}</span>
                </div>

                <div class="form-group">
                    <label for="id_distributor">Nama Distributor</label>

                    <select name="id_distributor" class="form-control">
                        <option value="">Pilih</option>
                        @foreach ($distributor as $item)
                            <option value="{{ $item->id }}" {{ old('id_distributor') == $item->id ? 'selected':'' }}>{{ $item->nama_distributor }}</option>
                        @endforeach
                    </select>
                    <p class="text-danger">{{ $errors->first('id_distributor')}}</p>
            </div>

            <div class="form-group">
                <label for="gambar_produk">Foto Produk</label>
                <input type="file" name="gambar_produk" class="form-control" value="{{ old('gambar_produk') }}" required>
                <p class="text-danger">{{ $errors->first('gambar_produk') }}</p>
            </div>
            </div>




            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
    </div>
@endsection

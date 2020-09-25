@extends('admin.welcome')
@section('content')
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title"> EDIT PRODUK</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form role="form" enctype="multipart/form-data" action="{{route('produk.update', $produk->id)}}" method="POST">
            @csrf
            @method('PUT')
            <div class="card-body">
                <div class="form-group">
                    <label for="gambar_produk">Gambar</label>
                     <input type="file" name="gambar_produk" class="form-control" value="{{ old('gambar_produk') }}">
                    <p class="text-danger">{{ $errors->first('gambar_produk') }}</p>

                </div>
                <div class="form-group">
                    <label for="labelinput">Nama Produk</label>
                    <input type="text" value="{{$produk->nama_produk}}" placeholder="Nama Produk" name='nama_produk' class="form-control {{ $errors->has('nama_produk') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('nama_produk') }}</span>
                </div>
                <div class="form-group">
                    <label for="id_kategori">Kategori</label>

                    <select name="id_kategori" class="form-control">
                        @foreach ($kategori as $item)
                            <option value="{{ $item->id }}"
                                @if ($item->id == $produk->id_kategori)
                                        selected
                                @endif
                                 {{ old('id_kategori') == $item->id ? 'selected':'' }}>{{ $item->nama_kategori }}</option>
                        @endforeach
                    </select>
                    <p class="text-danger">{{ $errors->first('id_kategori')}}</p>
                </div>
                <div class="form-group">
                    <label for="labelinput">Harga</label>
                    <input type="text" value="{{$produk->harga_produk}}" placeholder="Harga" name='harga_produk' class="form-control {{ $errors->has('harga_produk') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('harga_produk') }}</span>
                </div>

                <div class="form-group">
                    <label for="labelinput">Berat</label>
                    <input type="text" value="{{$produk->des_produk}}" placeholder="Berat" name='des_produk' class="form-control {{ $errors->has('des_produk') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('des_produk') }}</span>
                </div>

                <div class="form-group">
                    <label for="id_distributor">Nama Distributor</label>

                    <select name="id_distributor" class="form-control">
                        <option>Pilih</option>
                        @foreach ($distributor as $item)
                            <option value="{{ $item->id }}"
                                @if ($item->id == $produk->id_distributor)
                                        selected
                                @endif
                                {{ old('id_distributor') == $item->id ? 'selected':'' }}>{{ $item->nama_distributor }}</option>
                        @endforeach
                    </select>
                    <p class="text-danger">{{ $errors->first('id_distributor')}}</p>
                </div>

            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
        </form>
    </div>
@endsection

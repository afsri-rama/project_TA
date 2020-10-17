@extends('konsumen.welcome')
@section('content')
        <section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <h4>Edit profil</h4>
                <form role="form" action="{{route('profil.update', $konsumen->id)}}" method="POST">
                        @csrf
                        @method('PUT')
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="checkout__input">
                                        <label for="labelinput">Nama</label>
                                        <input type="text" value="{{$konsumen->nama_konsumen}}" placeholder="USERNAME" name='nama_konsumen' class="form-control {{ $errors->has('nama_konsumen') ? 'is-invalid' : '' }}">
                                        <span class="text-danger">{{ $errors->first('nama_konsumen') }}</span>
                                    </div>
                                </div>
                            </div>

                            <div class="checkout__input">
                                <label for="labelinput">Username</label>
                                <input type="text" value="{{$user->username}}" placeholder="USERNAME" name='username' class="form-control {{ $errors->has('username') ? 'is-invalid' : '' }}">
                                <span class="text-danger">{{ $errors->first('username') }}</span>
                            </div>

                            <div class="checkout__input">
                                <label for="labelinput">Alamat</label>
                                <input type="text" value="{{$konsumen->alamat_konsumen}}" placeholder="Alamat" name='alamat_konsumen' class="form-control {{ $errors->has('alamat_konsumen') ? 'is-invalid' : '' }}">
                                <span class="text-danger">{{ $errors->first('alamat_konsumen') }}</span>
                            </div>

                            <div class="checkout__input">
                                <label for="labelinput">No WA</label>
                                <input type="text" value="{{$konsumen->wa_konsumen}}" placeholder="WA" name='wa_konsumen' class="form-control {{ $errors->has('wa_konsumen') ? 'is-invalid' : '' }}">
                                <span class="text-danger">{{ $errors->first('wa_konsumen') }}</span>
                                
                            </div>

                            <div class="checkout__input">
                                <label for="labelinput">Email</label>
                                <input type="text" value="{{$user->email}}" placeholder="EMAIL" name='email' class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }}">
                                <span class="text-danger">{{ $errors->first('email') }}</span>
                            </div>

                            <div class="checkout__input">
                                <p>Password<span>*</span></p>
                                    <input type="text" value="Password" placeholder="PASSWORD" name='password' class="form-control {{ $errors->has('password') ? 'is-invalid' : '' }}">
                                        <span class="text-danger">{{ $errors->first('password') }}</span>

                    
                            </div>

                        </div>
                    </div>
                    <div>
                        <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                </form>
            </div>
        </div>
    </section>
@endsection

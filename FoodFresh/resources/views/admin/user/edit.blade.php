@extends('admin.welcome')
@section('content')
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title"> EDIT USERS </h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form role="form" action="{{route('user.update', $users->id)}}" method="POST">
            @csrf
            @method('PUT')
            <div class="card-body">
                <div class="form-group">
                    <label for="labelinput">Nama Level</label>
                    <select name="id_level" class="form-control">
                        @foreach ($level as $item)
                            <option value ="{{ $item->id }}"
                                 @if ($item->id == $users->id_level)
                                        selected
                                @endif
                                {{ old('id_level') == $item->id ? 'selected':'' }}>{{ $item->nama_level }}</option>
                        @endforeach
                    </select>
                    <span class="text-danger">{{ $errors->first('id_level') }}</span>
                </div>
                <div class="form-group">
                    <label for="labelinput">Username</label>
                    <input type="text" value="{{$users->username}}" placeholder="USERNAME" name='username' class="form-control {{ $errors->has('username') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('username') }}</span>
                </div>
                <div class="form-group">
                    <label for="labelinput">Email</label>
                    <input type="text" value="{{$users->email}}" placeholder="EMAIL" name='email' class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('email') }}</span>
                </div>
                <div class="form-group">
                    <label for="labelinput">Password</label>
                    <input type="text" value="{{$users->password}}" placeholder="PASSWORD" name='password' class="form-control {{ $errors->has('password') ? 'is-invalid' : '' }}">
                    <span class="text-danger">{{ $errors->first('password') }}</span>
                </div>
            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
        </form>
    </div>
@endsection

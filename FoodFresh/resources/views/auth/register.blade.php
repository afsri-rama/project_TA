<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin Fresh Food | Registration</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{asset('admin_theme')}}/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="{{asset('admin_theme')}}/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{asset('admin_theme')}}/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
    <a>FRESH FOOD</a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">Register a new membership</p>

      <form role="form" action="{{route('register')}}" method="POST">
            @csrf
        <div class="input-group mb-3">
          <input type="text"  placeholder="NAMA" name='nama_konsumen' value='{{old('nama_konsumen')}}' class="form-control {{ $errors->has('nama_konsumen') ? 'is-invalid' : '' }}">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="text-danger">{{ $errors->first('nama_konsumen') }}</span>
            </div>
          </div>
        </div>

        <div class="input-group mb-3">
          <input type="text"  placeholder="USERNAME" name='username' value='{{old('username')}}' class="form-control {{ $errors->has('username') ? 'is-invalid' : '' }}">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="text-danger">{{ $errors->first('username') }}</span>
            </div>
          </div>
        </div>

        <div class="input-group mb-3">
          <input type="text"  placeholder="ALAMAT" name='alamat_konsumen' value='{{old('alamat_konsumen')}}' class="form-control {{ $errors->has('alamat_konsumen') ? 'is-invalid' : '' }}">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="text-danger">{{ $errors->first('alamat_konsumen') }}</span>
            </div>
          </div>
        </div>

        <div class="input-group mb-3">
          <input type="text"  placeholder="WA" name='wa_konsumen' value='+62{{old('wa_konsumen')}}' class="form-control {{ $errors->has('wa_konsumen') ? 'is-invalid' : '' }}">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="text-danger">{{ $errors->first('wa_konsumen') }}</span>
            </div>
          </div>
        </div>

        <div class="input-group mb-3">
          <input type="text"  placeholder="EMAIL" name='email' value='{{old('email')}}' class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }}">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="text-danger">{{ $errors->first('email') }}</span>
            </div>
          </div>
        </div>

        <div class="input-group mb-3">
          <input type="password"  placeholder="PASSWORD" name='password' value='{{old('password')}}' class="form-control {{ $errors->has('password') ? 'is-invalid' : '' }}">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="text-danger">{{ $errors->first('password') }}</span>
            </div>
          </div>
        </div>

        <div class="form-group{{ $errors->has('CaptchaCode') ? ' has-error' : '' }}">
            <label class="col-md-4 control-label">Captcha</label>
            <div class="col-md-6">
              {!! captcha_image_html('ContactCaptcha') !!}
              <input style="margin-left: 20% ;" class="form-control" type="text" id="CaptchaCode" name="CaptchaCode">
              @if ($errors->has('CaptchaCode'))
                <span class="help-block">
                  <strong>{{ $errors->first('CaptchaCode') }}</strong>
                </span>
              @endif
          </div>
        </div>

        <div class="row">
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Register</button>
          </div>
          <!-- /.col -->
        </div>
      </form>


      <a href="{{route('login')}}" class="text-center">Sudah Ada Akun</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
</body>
</html>

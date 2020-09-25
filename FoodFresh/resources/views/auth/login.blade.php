<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Fresh Food | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{asset('admin_theme')}}/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
<link rel="stylesheet" href="{{asset('admin_theme')}}/dist/img/logo2.png">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="{{asset('admin_theme')}}/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{asset('admin_theme')}}/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition login-page">
<div class="login-box">
    @include('alert.alert')
  <div class="login-logo">
    <a ><b>LOGIN</b>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Sign in to start your session</p>

      <form action="{{route('login')}}" method="POST">
            @csrf
         <div class="form-group mb-3">
            <input type="text" placeholder="Username" name='username' class="form-control {{ $errors->has('username') ? 'is-invalid' : '' }}">
            <span class="text-danger">{{ $errors->first('username') }}</span>
        </div>

        <div class="form-group mb-3">
            <input type="password" placeholder="Password" name='password' class="form-control {{ $errors->has('password') ? 'is-invalid' : '' }}">
            <span class="text-danger">{{ $errors->first('password') }}</span>
        </div>


        <div class="row">
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block" >Sign In</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      <!-- /.social-auth-links -->

      <p class="mb-1">
        <a href="{{route('register')}}">Register</a>
      </p>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="{{asset('admin_theme')}}/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="{{asset('admin_theme')}}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="{{asset('admin_theme')}}/dist/js/adminlte.min.js"></script>

</body>
</html>

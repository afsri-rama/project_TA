
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin Fresh Food</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport">

  @include('admin.partials.style')

</head>
<body class="hold-transition sidebar-mini">

<!-- Site wrapper -->
<div class="wrapper">
  <!-- Navbar -->
  {{-- @include('admin.partials.navbar') --}}
  <nav class="main-header navbar navbar-expand navbar-grey navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>
</nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    @include('admin.partials.brand_logo')

    <!-- Sidebar -->
    <div class="sidebar col-12 col-md-12 col-sm-12">
      <!-- Sidebar user (optional) -->
      @include('admin.partials.sidebar')
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->

    @include('admin.partials.wrapper')

    <!-- Main content -->
    <section class="content">
        @include('alert.alert')
        @yield('content')

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

    @include('admin.partials.footer')

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

    @include('admin.partials.script')
</body>
</html>

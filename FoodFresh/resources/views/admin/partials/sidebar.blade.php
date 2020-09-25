<div class="user-panel mt-3 pb-3 mb-3 d-flex">
    {{--<div class="image">
        <img src="{{asset('admin_theme')}}/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
    </div>
    <div class="info">
        <a href="#" class="d-block">Alexander Pierce</a>
    </div>
    </div>--}}

    <!-- Sidebar Menu -->
    <nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
            with font-awesome or any other icon font library -->
        <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
                <i></i>
                <p> Dashboard </p>
            </a>

        </li>

        <li class="nav-item has-treeview">
            <a href="{{route('level.index')}}" class="nav-link">
                <i></i>
                <p> Level Users </p>
            </a>
        </li>

        <li class="nav-item has-treeview">
            <a href="{{route('user.index')}}" class="nav-link">
                <i></i>
                <p> Users </p>
            </a>
        </li>

        <li class="nav-item has-treeview">
            <a href="{{route('distributor.index')}}" class="nav-link">
                <i></i>
                <p> Distributor </p>
            </a>
        </li>

        <li class="nav-item has-treeview">
            <a href="{{route('kurir.index')}}" class="nav-link">
                <i></i>
                <p> Kurir </p>
            </a>
        </li>

        <li class="nav-item has-treeview">
            <a href="{{route('konsumen.index')}}" class="nav-link">
                <i></i>
                <p> List Konsumen</p>
            </a>
        </li>

        <li class="nav-item has-treeview">
            <a href="{{route('kategori.index')}}" class="nav-link">
                <i></i>
                <p> Kategori Produk </p>
            </a>
        </li>

        <li class="nav-item has-treeview">
            <a href="{{route('produk.index')}}" class="nav-link">
                <i></i>
                <p>Produk</p>
            </a>
        </li>

         <li class="nav-item has-treeview">
            <a href="{{route('pembayaran_admin.index')}}" class="nav-link">
                <i></i>
                <p>Pembayaran</p>
            </a>
        </li>

        <li class="nav-item has-treeview">
            <a href="{{route('pemesanan.index')}}" class="nav-link">
                <i></i>
                <p>Pemesanan</p>
            </a>
        </li>

        <li class="nav-item has-treeview">
            <a href="{{route('pembelian.index')}}" class="nav-link">
                <i></i>
                <p>Pembelian</p>
            </a>
        </li>


        <li class="nav-item has-treeview">
            <a href="{{route('logout')}}" class="nav-link">
                <i></i>
                <p>Logout</p>
            </a>
        </li>







</nav>

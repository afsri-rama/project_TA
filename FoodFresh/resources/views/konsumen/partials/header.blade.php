    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> freshfood@gmail.com</li>
                                <li>Hanya Untuk Wilayah Kota Padang !
                                    <h6 style="font-size: 10px">Pesanan Anda Akan Kami Antar Langsung Ke Alamat</h6>
                                </li>

                            </ul>

                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                            </div>


                            {{-- @if (isset(auth()->user()->id))
                                <div class="header__top__right__auth">
                                    <i class="fa fa-user"></i> {{auth()->user()->konsumen->nama_konsumen}}
                                </div>
                                |
                                <div class="header__top__right__auth">
                                    <a href="{{route('logout')}}"> Logout </a>
                                </div>
                            @else
                                <div class="header__top__right__auth">
                                    <a href="{{route('loginIndex')}}"><i class="fa fa-user"></i> Login</a>
                                </div>
                            @endif --}}

                            @if (isset(auth()->user()->id))
                                <div class="header__top__right__auth">
                                   <a href="{{route('profil.index')}}"> <i class="fa fa-user"></i></a>{{--  {{auth()->user()->konsumen->nama_konsumen}}--}}
                                </div>
                                |
                                <div class="header__top__right__auth">
                                    <a href="{{route('logout')}}"> Logout </a>
                                </div>
                            @else
                                <div class="header__top__right__auth">
                                    <a href="{{route('loginIndex')}}"><i class="fa fa-user"></i> Login</a>
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo" style="margin-left: 30%">
                        <img src="{{asset('konsumen_theme')}}/img/logotoko.png" alt="" style="width: 60%"   ></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="{{route('home')}}">Home</a></li>
                            <li><a href="{{route('produk_konsumen.index')}}">Produk</a></li>
                            <li><a href="#">Belanja</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="{{route('keranjang.index')}}">Keranjang</a></li>
                                    <li><a href="{{route('checkout.index')}}">Check Out</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Histori</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="{{route('histori.index')}}">Pembayaran</a></li>
                                    <li><a href="{{route('historiPesan.index')}}">Pesanan</a></li>
                                </ul>
                            </li>
                            <li><a href="{{route('kontak.index')}}">Kontak</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>

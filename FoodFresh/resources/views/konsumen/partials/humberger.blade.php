<div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo col-10">
           <img src="{{asset('konsumen_theme')}}/img/logo2.png" width="50%" height="50%">
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__auth">
                @if (isset(auth()->user()->id))
                                {{-- <div class="header__top__right__auth">
                                    <i class="fa fa-user"></i> {{auth()->user()->konsumen->nama_konsumen}}
                                </div>
                                |--}}
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
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li><a href="{{route('home')}}">Home</a></li>
                <li><a href="{{route('produk_konsumen.index')}}">Produk</a></li>
                <li><a href="#">Belanja</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="{{route('keranjang.index')}}">Keranjang</a></li>
                        <li><a href="{{route('checkout.index')}}">Check Out</a></li>
                    </ul>
                </li>
                <li><a href="{{route('kontak.index')}}">Kontak</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> freshfood@gmail.com</li>
                <li>Pesanan Anda Akan Kami Antar Langsung Ke Alamat</li>
            </ul>
        </div>
    </div>

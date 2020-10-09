
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Fresh Food Padang</title>

    @include('konsumen.partials.style')
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    {{--@include('konsumen.partials.humberger')--}}
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    @include('konsumen.partials.header')
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    {{-- @include('konsumen.partials.hero') --}}
    <section class="hero hero-normal">
        <div class="container">
            @include('alert.alert')
            <div class="row">
                <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>Kategori</span>
                    </div>
                    <ul>
                        <li><a href={{route('produk_konsumen.index')}}> Semua Kategori </a></li>
                        @foreach (\App\Kategori::all() as $item)
                            <li><a href={{"?kategori=".$item->id}}> {{$item->nama_kategori}} </a></li>
                        @endforeach
                    </ul>
                </div>
                </div>
                {{-- <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    Semua Kategori
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="Mau belanja apa?">
                                <button type="submit" class="site-btn">CARI</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>081267597033</h5>
                                <span>8.00 - 18.00 Wib</span>
                            </div>
                        </div>
                    </div> --}}
                    {{-- content --}}
                    @yield('content')
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Categories Section Begin -->
    {{--@include('konsumen.partials.categories')--}}
    <!-- Categories Section End -->

    <!-- Featured Section Begin -->
    {{--@include('konsumen.partials.featured')--}}
    {{-- @yield('featured') --}}
    <!-- Featured Section End -->

    <!-- Banner Begin -->
    {{--@include('konsumen.partials.banner')
    <!-- Banner End -->

    <!-- Latest Product Section Begin -->
    @include('konsumen.partials.productsection')
    <!-- Latest Product Section End -->

    <!-- Blog Section Begin -->
    @include('konsumen.partials.blog')--}}
    <!-- Blog Section End -->

    <!-- Footer Section Begin -->
    @include('konsumen.partials.footer')
    <!-- Footer Section End -->

    <!-- Js Plugins -->
@include('konsumen.partials.script')

<script type="text/javascript">
    (function () {
        var options = {
            whatsapp: "+6281267597033", // WhatsApp number
            call_to_action: "Kirim Pesan", // Call to action
            position: "right", // Position may be 'right' or 'left'
        };
        var proto = document.location.protocol, host = "getbutton.io", url = proto + "//static." + host;
        var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = url + '/widget-send-button/js/init.js';
        s.onload = function () { WhWidgetSendButton.init(host, proto, options); };
        var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);
    })();
</script>

</body>

</html>

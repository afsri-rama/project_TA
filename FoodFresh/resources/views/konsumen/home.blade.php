@extends('konsumen.welcome')
@section('content')


    <div class="hero__item set-bg  col-md-12" data-setbg="{{asset('konsumen_theme')}}/img/hero/banner.jpg">
        <div class="hero__text">
            <span>FRESH FOOD</span>
            <h3>BAHAN MAKANAN <br />100% Segar</h3>
            <p>Pesan Sekarang, Besok Kami Antar!</p>
            <a href="#" class="primary-btn">BELANJA SEKARANG</a>
        </div>
    </div>

@endsection

{{-- @section('featured')
    @include('konsumen.partials.featured')
@endsection --}}

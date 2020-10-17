@extends('konsumen.welcome')
@section('content')
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="{{asset('app/'.$produk->gambar_produk)}}" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3>{{$produk->nama_produk}}</h3>
                        <div class="product__details__price">Rp. {{$produk->harga_produk}}  </div>
                         <div>{{$produk->des_produk}}</div>
                        <form id='{{$produk->id}}' action="{{route('keranjang.addCart', $produk->id)}}" method="post">
                             @csrf
                            <div class="product__details__quantity">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" name="total_produk" value="1">
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn primary-btn">Keranjang</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

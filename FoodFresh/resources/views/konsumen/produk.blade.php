@extends('konsumen.welcome')
@section('content')
    <section class="product spad">
        <div class="container">
            <div class="row">
                @foreach ($produk as $item)
                    <div class="col-lg-4 col-md-6 col-sm-6" style="margin-top: -5%">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="{{asset('app/'.$item->gambar_produk)}}" style="background-image: url(&quot;img/product/product-1.jpg&quot;);" >
                                <ul class="product__item__pic__hover">
                                    <li>
                                        <a href="" onclick="
                                            var cfm = confirm('Yakin ingin menambahkan ?');
                                            if(cfm){
                                            event.preventDefault();
                                            document.getElementById('{{$item->id}}').submit();
                                            }
                                        "> <i class="fa fa-shopping-cart"></i> </a>
                                        <form id='{{$item->id}}' action="{{route('keranjang.addCart', $item->id)}}" style="display:none;" method="post">
                                            @csrf
                                            <input type="hidden" name="total_produk" value='1' />
                                        </form>
                                    </li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="{{route('detail.getDetail', $item->id)}}">{{$item->nama_produk}}</a></h6>
                                <h5>RP. {{$item->harga_produk}}</h5>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <div class="product__pagination">
                <a href="#">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#"><i class="fa fa-long-arrow-right"></i></a>
            </div>
        </div>
    </section>
@endsection

@extends('konsumen.welcome')
@section('content')
        <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product">Produk</th>
                                    <th>Harga Produk</th>
                                    <th>Jumlah Produk</th>
                                    <th>Total Harga</th>
                                    <th>Tanggal</th>
                                    <th>Status Pembayaran</th>

                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($keranjang as $item)
                                    <tr>
                                    <td class="shoping__cart__item">
                                        <img width="25%" src="{{asset('app/'.$item->produk->gambar_produk)}}" alt="">
                                        <h5>{{$item->produk->nama_produk}}</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                       {{$item->produk->harga_produk}}
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        {{$item->total_produk}}
                                    </td>
                                    <td class="shoping__cart__total">
                                        {{$item->total_harga}}
                                    </td>
                                    <td class="shoping__cart__total">
                                        {{$item->updated_at}}
                                    </td>
                                    <td class="shoping__cart__total">
                                        @if ($item->status_produk == 3)
                                           Sudah Dibayar

                                        @elseif ($item->status_produk == 2)
                                           Menunggu pembayaran
                                           <a href="{{route('pembayaran.index')}}" button type="submit" class="site-btn" >Upload Bukti</button></a>
                                        @else
                                            Produk Masih Dikeranjang
                                            <a href="{{route('pembayaran.index')}}" button type="submit" class="site-btn" >Upload Bukti</button></a>
                                        @endif
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <span class="icon_close" onclick="
                                            var cfm = confirm('Yakin Akan Menghapus ?');
                                            if(cfm){
                                            event.preventDefault();
                                            document.getElementById('{{$item->id}}').submit();
                                            }
                                        "></span>
                                            <form id='{{$item->id}}' action="{{route('keranjang.destroy',$item->id)}}" style="display:none;" method="post">
                                                @csrf
                                                @method('DELETE')
                                            </form>
                                    </td>
                                </tr>
                                @endforeach

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

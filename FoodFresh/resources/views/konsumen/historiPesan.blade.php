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
                                    <th>Tanggal Pemesanan</th>
                                    <th>Status Pesanan</th>

                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($pemesanan as $item)
                                    <tr>

                                    <td class="shoping__cart__item">
                                      <center> {{$item->tgl_pemesanan}}</center>
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        {{$item->status_pemesanan}}
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

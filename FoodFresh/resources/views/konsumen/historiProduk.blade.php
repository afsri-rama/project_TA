@extends('konsumen.welcome')
@section('content')
        <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Nama Produk</th>
                                    <th>Gambar Produk</th>
                                    <th>Total Produk</th>
                                    <th>Total Harga</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($dataProduk as $item)
                                    <tr>
                                        <td>
                                            {{$item->nama_produk}}
                                        </td>

                                         <td width="25%">
                                            <!-- Button trigger modal -->
                                            <button type="button" class="btn btn-sm btn-default" data-toggle="modal" data-target="#exampleModalScrollable">
                                                <img src="{{asset('app/'.$item->gambar_produk)}}" alt="" width="100%" />
                                            </button>

                                            <!-- Modal -->
                                            <div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-scrollable" role="document">
                                                    <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalScrollableTitle"> Prouduk </h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <img src="{{asset('app/'.$item->gambar_produk)}}" alt="" width="100%" />
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>

                                        <td>
                                            {{$item->total_produk}}
                                        </td>

                                        <td>
                                            RP. {{$item->total_harga}}
                                        </td>


                                    </tr>
                                @endforeach

                                    <tr>
                                        <th colspan="3"> Total Harga </th>
                                        <th > RP. {{$totalPembayaran}} </th>
                                    </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

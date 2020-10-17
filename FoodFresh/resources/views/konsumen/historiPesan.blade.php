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
                                    <th>Tanggal Pemesanan</th>
                                    <th>Status Pesanan</th>
                                    <th>Total Pembayaran</th>
                                    <th>Butki Pembayaran</th>
                                    <th></th>
                                </tr>
                            </thead>
                                @foreach ($pemesanan as  $key => $item)
                                    <tr>
                                        <td>
                                            <center> {{$item->tgl_pemesanan}}</center>
                                        </td>
                                        <td>
                                            {{$item->status_pemesanan}}
                                        </td>

                                        <td>
                                            RP. {{$item->total_pembayaran}}
                                        </td>

                                        <td>
                                            <!-- Button trigger modal -->
                                            <button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#histori-pesan-{{$key}}">
                                            View Bukti
                                            </button>

                                            <!-- Modal -->
                                            <div class="modal fade" id="histori-pesan-{{$key}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-scrollable" role="document">
                                                <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalScrollableTitle"> Bukti Pembayaran </h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <img src="{{asset('app/'.$item->bukti_pembayaran)}}" alt="" width="100%" />
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                </div>
                                                </div>
                                            </div>
                                            </div>
                                        </td>


                                        <td>
                                            <a href="{{route('historiPesan.show', $item->id_pembayaran)}}" class="btn btn-sm btn-success"> Cek Produk </a>
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

@extends('konsumen.welcome2')
@section('content')
    <section>
        <div class="col-lg-12 col-md-6">
            <div class="checkout__order">
                Total Pembayaran:<br/>
                   <h4> RP. {{$totalSemua}}</h4><h6 style="color: red">Bayar pesanan sesuai jumlah di atas. Dicek dalam 24 jam setelah bukti transfer diupload.</h6>
                   <hr>
                   <div class="media">
                        <img class="mr-3" src="{{asset('konsumen_theme')}}/img/bri.png" alt="Generic placeholder image" width="60">
                        <div class="media-body">
                            <h5 class="mt-0">BANK BRI</h5>
                            Nomor Rekening 12345678910 atas nama <strong>Fresh Food</strong>
                        </div>
                     </div><br>
                    <form action="{{route('checkout.pesan')}}" method="post">
                        @csrf
                        @method('PUT')
                       <button type="submit" class="site-btn">Upload Bukti Pembayaran</button>
                   </form>
            </div>

        </div>

    </section>
@endsection

@extends('konsumen.welcome')
@section('content')
        <section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <h4>Detail Pembayaran</h4>
                <form action="#">
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="checkout__input">
                                        <p> Nama <span>*</span></p>
                                        <input required name="nama_konsumen" value='{{auth()->user()->konsumen->nama_konsumen}}' type="text">
                                    </div>
                                </div>
                            </div>

                            <div class="checkout__input">
                                <p>Alamat<span>*</span></p>
                                <input required name="alamat_konsumen" value='{{auth()->user()->konsumen->alamat_konsumen}}' type="text">
                            </div>

                            <div class="checkout__input">
                                <p>No WA<span>*</span></p>
                                <input required name="wa_konsumen" value='{{auth()->user()->konsumen->wa_konsumen}}' type="text">
                            </div>

                            <div class="checkout__input">
                                <p>Email<span>*</span></p>
                                <input required name="email" value='{{auth()->user()->email}}' type="text">
                            </div>

                            <div class="checkout__input__checkbox">
                                <label for="acc">
                                    Buat Akun?
                                    <input type="checkbox" id="acc">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="checkout__input">
                                <p>Password<span>*</span></p>
                                <input type="text">
                            </div>

                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h4>Pesanan Mu</h4>
                                <div class="checkout__order__total">Total <span>RP. {{$totalSemua}} </span></div>
                                <div class="checkout__input__checkbox">
                                </div>
                                <div class="">
                                    <label for="payment">
                                        Pilih Pembayaran
                                    </label>
                                </div>
                                <div class="checkout__input__checkbox">
                                    <label for="paypal">
                                        Transfer
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <a href="{{route('pembayaran.index')}}" button type="submit" class="site-btn" >Pesan</button></a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
@endsection

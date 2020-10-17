@extends('konsumen.welcome')
@section('content')
        <section class="checkout spad">
        <div class="container">

            <div class="checkout__form">
                <h4>Profil<h4>

                <form action="#">
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="checkout__input">
                                        <p> Nama  : {{auth()->user()->konsumen->nama_konsumen}} </p>
                                    </div>
                                </div>
                            </div>

                            <div class="checkout__input">
                                <p>Username : {{auth()->user()->username}}</p>

                            </div>

                            <div class="checkout__input">
                                <p>Alamat : {{auth()->user()->konsumen->alamat_konsumen}}</p>

                            </div>

                            <div class="checkout__input">
                                <p>No WA  : {{auth()->user()->konsumen->wa_konsumen}}</p>

                            </div>

                            <div class="checkout__input">
                                <p>Email  : {{auth()->user()->email}}</p>
                            </div>

                        </div>


                    </div>
                    <div> <span><a href="{{route('profil.edit', $konsumen->id)}}" class="btn btn-xs btn-info"> ✏ Edit Profil</a></span></div>

                </form>
            </div>
        </div>
    </section>
@endsection

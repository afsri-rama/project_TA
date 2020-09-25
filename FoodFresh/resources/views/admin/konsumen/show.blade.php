@extends('admin.welcome')
@section('title')
    USERS
@endsection
@section('content')
    <table class="table">
        <thead>
            <tr>
                <th> No </th>
                <th> Nama Konsumen </th>
                <th> Alamat</th>
                <th> No WA </th>
            </tr>
        </thead>
        <tbody>
            @php
                $index = 1 ;
            @endphp
            @foreach ($konsumen as $item)
                <tr>
                    <td style="width: 2% ;"> {{$index++}} </td>
                    <td> {{$item->nama_konsumen}} </td>
                    <td> {{$item->alamat_konsumen}} </td>
                    <td> {{$item->wa_konsumen}} </td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection

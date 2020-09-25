@extends('admin.welcome')
@section('title')
    KURIR
@endsection
@section('content')
    <a href="{{route('kurir.create')}}" class="btn btn-xs btn-success"> + TAMBAH KURIR </a>
    <table class="table">
        <thead>
            <tr>
                <th> No </th>
                <th> Nama Kurir</th>
                <th> WA Kurir </th>
                <th> Deskripsi</th>
                {{--<th> Kirim WA </th>--}}
                <th> Options </th>
            </tr>
        </thead>
        <tbody>
            @php
                $index = 1 ;
            @endphp
            @foreach ($kurir as $item)
                <tr>
                    <td style="width: 2% ;"> {{$index++}} </td>
                    <td> {{$item->nama_kurir}} </td>
                    <td> {{$item->wa_kurir}} </td>
                    <td> {{$item->des_kurir}} </td>
                   {{-- <td> <div class="btn btn-group btn-group-xs"><a href="{{route('distributor.send', $item->id)}}" class="btn btn-xs btn-info"> Kirim</a> </div> </td>--}}
                    <td style="width: 50% ;">
                        <div class="btn btn-group btn-group-xs">
                            {{-- edit --}}
                            <a href="{{route('kurir.edit', $item->id)}}" class="btn btn-xs btn-info"> ✏ EDIT | SHOW </a>
                            {{-- delete --}}
                            <a href="" class="btn btn-danger btn-xs" onclick="
                                var cfm = confirm('Yakin Akan Menghapus ?');
                                if(cfm){
                                event.preventDefault();
                                document.getElementById('{{$item->id}}').submit();
                                }
                            "> ❌ </i> Delete</a>
                            </div>
                            <form id='{{$item->id}}' action="{{route('kurir.destroy',$item->id)}}" style="display:none;" method="post">
                                @csrf
                                @method('DELETE')
                            </form>
                        </div>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection

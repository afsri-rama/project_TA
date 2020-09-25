@extends('admin.welcome')
@section('title')
    DISTRIBUTOR
@endsection
@section('content')
    <a href="{{route('distributor.create')}}" class="btn btn-xs btn-success"> + TAMBAH DISTRIBUTOR </a>
    <table class="table">
        <thead>
            <tr>
                <th> No </th>
                <th> Nama Distributor</th>
                <th> WA Distributor </th>
                <th> Deskripsi</th>
                {{--<th> Kirim WA </th>--}}
                <th> Options </th>
            </tr>
        </thead>
        <tbody>
            @php
                $index = 1 ;
            @endphp
            @foreach ($distributor as $item)
                <tr>
                    <td style="width: 2% ;"> {{$index++}} </td>
                    <td> {{$item->nama_distributor}} </td>
                    <td> {{$item->wa_distributor}} </td>
                    <td> {{$item->des_distributor}} </td>
                   {{-- <td> <div class="btn btn-group btn-group-xs"><a href="{{route('distributor.send', $item->id)}}" class="btn btn-xs btn-info"> Kirim</a> </div> </td>--}}
                    <td style="width: 50% ;">
                        <div class="btn btn-group btn-group-xs">
                            {{-- edit --}}
                            <a href="{{route('distributor.edit', $item->id)}}" class="btn btn-xs btn-info"> ✏ EDIT | SHOW </a>
                            {{-- delete --}}
                            <a href="" class="btn btn-danger btn-xs" onclick="
                                var cfm = confirm('Yakin Akan Menghapus ?');
                                if(cfm){
                                event.preventDefault();
                                document.getElementById('{{$item->id}}').submit();
                                }
                            "> ❌ </i> Delete</a>
                            </div>
                            <form id='{{$item->id}}' action="{{route('distributor.destroy',$item->id)}}" style="display:none;" method="post">
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

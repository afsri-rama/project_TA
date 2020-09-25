@extends('admin.welcome')
@section('title')
    KATEGORI
@endsection
@section('content')
    <a href="{{route('kategori.create')}}" class="btn btn-xs btn-success"> + TAMBAH KATEGORI </a>
    <table class="table">
        <thead>
            <tr>
                <th> # </th>
                <th> NAMA KATEGORI </th>
                <th> OPTIONS </th>
            </tr>
        </thead>
        <tbody>
            @php
                $index = 1 ;
            @endphp
            @foreach ($kategori as $item)
                <tr>
                    <td style="width: 2% ;"> {{$index++}} </td>
                    <td> {{$item->nama_kategori}} </td>
                    <td style="width: 20% ;"> 
                        <div class="btn btn-group btn-group-xs">
                            {{-- edit --}}
                            <a href="{{route('kategori.edit', $item->id)}}" class="btn btn-xs btn-info"> ✏ EDIT | SHOW </a>
                            {{-- delete --}}
                            <a href="" class="btn btn-danger btn-xs" onclick="
                                var cfm = confirm('Yakin Akan Menghapus ?');
                                if(cfm){
                                event.preventDefault();
                                document.getElementById('{{$item->id}}').submit();
                                }
                            "> ❌ </i> Delete</a>
                            </div>
                            <form id='{{$item->id}}' action="{{route('kategori.destroy',$item->id)}}" style="display:none;" method="post">
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
@extends('admin.welcome')
@section('title')
    USERS
@endsection
@section('content')
    <a href="{{route('user.create')}}" class="btn btn-xs btn-success"> + TAMBAH USERS </a>
    <table class="table">
        <thead>
            <tr>
                <th> No </th>
                <th> Nama Level </th>
                <th> Username </th>
                <th> Email </th>
                <th> Password </th>
                <th> Options </th>
            </tr>
        </thead>
        <tbody>
            @php
                $index = 1 ;
            @endphp
            @foreach ($users as $item)
                <tr>
                    <td style="width: 2% ;"> {{$index++}} </td>
                    <td> {{$item->level->nama_level}} </td>
                    <td> {{$item->username}} </td>
                    <td> {{$item->email}} </td>
                    <td> {{$item->password}} </td>
                    <td >
                        <div class="btn btn-group btn-group-xs">
                            @if ($item->level->id != 1)
                                    <a href="" class="btn btn-danger btn-xs" onclick="
                                    var cfm = confirm('Yakin Akan Menghapus ?');
                                    if(cfm){
                                    event.preventDefault();
                                    document.getElementById('{{$item->id}}').submit();
                                    }
                                "> ❌ </i> Delete</a>
                                <form id='{{$item->id}}' action="{{route('user.destroy',$item->id)}}" style="display:none;" method="post">
                                    @csrf
                                    @method('DELETE')
                                </form>
                            @else
                                {{-- edit --}}
                                <a href="{{route('user.edit', $item->id)}}" class="btn btn-xs btn-info"> ✏ EDIT | SHOW </a>
                                {{-- delete --}}
                                <a href="" class="btn btn-danger btn-xs" onclick="
                                    var cfm = confirm('Yakin Akan Menghapus ?');
                                    if(cfm){
                                    event.preventDefault();
                                    document.getElementById('{{$item->id}}').submit();
                                    }
                                "> ❌ </i> Delete</a>
                                <form id='{{$item->id}}' action="{{route('user.destroy',$item->id)}}" style="display:none;" method="post">
                                    @csrf
                                    @method('DELETE')
                                </form>

                            @endif

                        </div>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection

@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <br>
                    <a href="{{route('home')}}" class="btn btn-primary" style="float:right;">Home</a>
                    <br>

                    <b>Reload status false</b>
                    <br>
                    Aguarde...
                   
                    <?php
                        DB::table('reload')->update(['status'=>1]);
                        $hell = '';
                        $shell = shell_exec('netstat -atulp | grep ngrok');
                    ?>
                    @if($shell=='')
                        Não há conexão estabelecida
                    @else
                    <hr>
                    <H3>NGROK <small>to Localhost</small></H3>                    
                        @foreach($arr=explode('tcp', $shell) as $info)
                            {{ $info  }}<br>
                        @endforeach 
                    @endif
                    
                    <hr>
                    <b>Reload status true</b>
                    <br>
                    <h3>NetCat</h3>
                    {{$shell = shell_exec('netstat -atulp | grep nc')}}
                    <br>
                    <hr>
                    <h3>Conexões TCP/IP estabelecidas</h3>
                    <?php
                        $hell = '';
                        $shell = shell_exec('netstat -atulp | grep tcp');
                    ?>
                    @foreach($arr=explode('tcp', $shell) as $info)
                        {{ $info  }}<br>
                    @endforeach 
                    <br>


                </div>
            </div>
        </div>
    </div>
</div>
@endsection

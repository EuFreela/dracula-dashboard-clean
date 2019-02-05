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

                    <div class="row">
                        @foreach($plugins as $plugin)
                            @if($plugin->status == 1)
                                
                                <div class="col-sm-4 card-plugin-dist">
                                    <div class="card">
                                        <img class="card-img-top card_plugins" src="{{$plugin->img}}" alt="Card image cap">
                                        <div class="card-body">
                                        <h5 class="card-title">{{$plugin->name}}</h5>
                                        <p class="card-text">{{$plugin->about}}</p>
                                        <a href="{{$plugin->page}}" class="btn btn-primary">Hosts ({{count($plugins)}})</a>
                                        <p class="card-text"><small class="text-muted">install {{date('d-m-Y H:i',strtotime($plugin->created_at))}}</small></p>
                                        </div>
                                    </div>
                                </div>                                                                             

                            @endif
                        @endforeach
                    </div>


                </div>
            </div>
        </div>
    </div>
</div>
@endsection

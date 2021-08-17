@extends('layouts.app')

@section('title', 'Eishop')

@section('sidebar')
    @parent
@endsection
<style>
@import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css');
</style>
@section('content')
	<div id="page" class="page">
          <div class="content-section">
   			 <div class="col-sm-12 col-xs-12" style="margin:0; padding:0 3px">
             	 <div class="content-section-header left">
            		<div class="container">
                	<h2 class="title">Director List</h2>
                    <div class="articleareas">
                            @if($directors!="")
                                <?php $i=0; ?>
                                @foreach($directors as $director)
                                <?php $i++; ?>
                                    <div class="col-sm-3" style="margin:0; padding:0">
                                        <a href="{{ route('director_details',$director->id) }}">
                                       	  <div style="width:96%; height:auto; float:left; margin:7px; border:1px solid #222357; text-align:center">
                                            <div style="width:100%; height:auto; text-align:center; float:left; padding:20px;">
                                            	<img src="{{ asset('uploads/director/'.$director->image) }}" style="width:100%; height:auto; border-radius:50%; text-align:center"  />
                                            </div>
                                            <h4 style="text-align:center">{{ $director->name }}</h4>
                                            {{ $director->designation }}
                                        </div>
                                        </a>
                                    </div>
                                 @endforeach
                            @endif
                      </div>
                </div>
            </div>
    	  </div>
          </div>
  	</div>
@endsection


@section('footer')
    @parent
@endsection

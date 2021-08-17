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
                	<h2 class="title">Circular List</h2>
                    <div class="articleareas">
                            @if($directors!="")
                                <?php $i=0; ?>
                                @foreach($directors as $director)
                                <?php $i++; ?>
                                    <div class="col-sm-4" style="margin:0; padding:0">
                                        <a href="{{ asset('uploads/circular/'.$director->image) }}" target="_blank">
                                       	  <div style="width:96%; height:auto; float:left; margin:10px; border:1px solid #222357; text-align:center">
                                            <div style="width:100%; height:auto; text-align:center; float:left;">
                                            	<img src="{{ asset('uploads/circular/'.$director->image) }}" style="width:100%; min-height:400px; max-height:400px;  text-align:center"  />
                                            </div>
                                            <h4 style="text-align:center; padding:20px 0; width:100%; float:left">{{ $director->name }}</h4>
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

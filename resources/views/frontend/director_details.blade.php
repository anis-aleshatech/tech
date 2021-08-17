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
             	<div class="middlearea">
                    <div class="articleareas">
                            @if($directors!="")
                                <div class="col-sm-12">
                                    <div style="width:100%; height:auto; float:left; margin-bottom:30px;  text-align:left; padding:10px; border:1px solid #222357; padding:0; border-radius:10px;">
                                        <div class="col-sm-2" style="margin:0; padding:10px; text-align:center;">  
                                        	<img src="{{ asset('uploads/director/'.$directors->image) }}" style="width:120px; height:auto; margin:0; padding:0;  border-radius:10px;"  />
                                        <h4 style="font-size:15px; padding:10px; text-align:center">{{ $directors->name }}</h4>
                                        <h5 style="margin:0; padding:0; color:#222357; text-align:center">{{ $directors->designation }}</h5>
                                        </div>
                                        <div class="col-sm-10" style="border-left:1px solid #222357; padding:10px; margin:0">                                        
                                        	<div style="margin-top:5px; text-align:justify; line-height:18px; font-size:14px; padding:5px 0; float:left; width:100%;">
                                        {!! $directors->details !!}</div>
                                        </div>
                                    </div>
                                </div>
                            @endif
                      </div>
                </div>
            </div>
    	  </div>
  	</div>
@endsection


@section('footer')
    @parent
@endsection

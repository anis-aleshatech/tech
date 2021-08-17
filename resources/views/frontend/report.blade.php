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
   			 <div class="col-sm-12 col-xs-12" style="margin:0; padding:0 3px; text-align:left!important">
             	 <div class="content-section-header left">
            		@if($selectedmenu!="")
                    	<div class="container">
                           <h2 class="title">{{ $selectedmenu->title}}</h2>
                           @if($reportingyear!="")
                           	 	@foreach($reportingyear as $ryear)
                                	 <h3 style="margin:20px 0 10px 0; font-weight:bold; width:100%; float:left"> {{ $ryear->years }} </h3>
									<?php 
									$reportsyear = App\Report::where([['menu_id',$selectedmenu->id],['years',$ryear->years]])->orderBy('id','ASC')->get(); ?>
                                    @if($reportsyear!="")
                                        <?php $i=0; ?>
                                        @foreach($reportsyear as $report)
                                        <?php $i++; ?>
                                            <div class="col-sm-12" style="border-bottom:1px solid #f5f5f5; padding:15px;">
                                                 <div class="col-sm-6"><i class="fa fa-star-o"></i> {{ $report->name }}</div>
                                                 <div class="col-sm-4">
                                                 <a href="{{ route('report.download',[$report->name,$report->files]) }}" style="color:#990033" title="Click here to download"> 
                                                  <img src="{{ asset('assets/front/images/pdf.png') }}" style="width:20px; height:auto" /> Download</a></div>
                                            </div>
                                         @endforeach
                                    @endif
                                @endforeach
                            @else                            
                                @if($reports!="")
                                    <?php $i=0; ?>
                                    @foreach($reports as $report)
                                    <?php $i++; ?>
                                        <div class="col-sm-12">                                      
                                                <a href="{{ route('report.download',[$report->name,$report->files]) }}">{{ $report->name }}</a>
                                        </div>
                                     @endforeach
                                @endif
                            @endif
                        </div>
                	@else
                    	<h4 style="margin:20%; text-align:center">No data found</h4>
                    @endif
            </div>
    	  </div>
          </div>
  	</div>
@endsection


@section('footer')
    @parent
@endsection

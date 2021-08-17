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
                	<h2 class="title">Products</h2>
                    <div class="productarea">
                            @if($products!="")
                                <?php $i=0; ?>
                                @foreach($products as $director)
                                <?php $i++; ?>
                                    <div class="col-sm-4" style="margin:0; padding:0">                                      
                                        	<a href="{{ route('product.details',$director->id) }}">
                                              <div class="thumb">                                              	
                                                    <div style="width:100%; height:auto; text-align:center; float:left; padding:20px;">
                                                        <img src="{{ asset('uploads/product/'.$director->image) }}" style="height:65px; text-align:center"  />
                                                    </div>
                                                    <h4>{{ $director->name }}</h4>  
                                               		 <div class="readmore">Read More</div>
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

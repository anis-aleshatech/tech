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
                	<h2 class="title">Video Gallery</h2>
                    <div class="productarea">
                            @if($videos!="")
                                <?php $i=0; ?>
                                @foreach($videos as $video)
                                <?php
									$i++;
									$videoImagePath = asset('uploads/video/'.$video->cover);			
									if($video->cover!=""){
										$coverImage = $videoImagePath;
									}
									else{
									  $coverImage = asset('assets/front/images/defaultlogo.png');	
									}
								?>
                                    <div class="col-sm-3" style="margin:0; padding:0 5px;">
                                    <div style="margin:10px; float:left; width:96%; padding:0; height:180px;box-shadow:#ccc 0 0 2px 2px;">                                                 
                                       <a  class="youtube" href='https://www.youtube.com/embed/{{ $video->video_ref }}?rel=0&amp;wmode=transparent'>
                                            <img src="{{ $coverImage }}" style="width:100%; height:100%;"  title="{{ $video->video_title }}" alt="{{ $video->video_title }}"/>
                                       </a>    
                                     </div>
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
    
  <link rel="stylesheet" href="{{ asset('assets/colorbox/colorbox.css') }}" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<script src="{{ asset('assets/colorbox/jquery.colorbox.js') }}"></script>
<script>
	(function($) {
		$(".youtube").colorbox({iframe:true, width:"80%", height:"80%"});
	})(jQuery);
</script>
@endsection

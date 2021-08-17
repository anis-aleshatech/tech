@extends('layouts.app')

@section('title', 'Eishop')

@section('sidebar')
    @parent
@endsection
<style>
@import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css');
</style>
@section('content')
	<div class="col-sm-3 col-xs-12" style="margin:0; padding:0 3px">
         <div class="middlearea">
            <div class="articles">
                <h3>FAQ's</h3>
                <ul>
                     @foreach($faqtopic as $pmenus)
                        <li><a href="{{ route('faq', ['q'=>$pmenus->slug] ) }}">{{ $pmenus->name }}</a></li>
                     @endforeach
                </ul>
         </div>
    </div>
</div>
    <div class="col-sm-9 col-xs-12" style="margin:0; padding:0 3px">
     <div class="middlearea">

        <div class="articleareas">
            @if($faqs!="")
                   <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="false">
                   	<?php $i=0; ?>
                   	@foreach($faqs as $faq)
                    <?php $i++; ?>
                        <div style="width:100%; height:auto; float:left; margin-bottom:10px">
                          <div class="panel panel-default faq_part">
                            <div class="panel-heading" role="tab" id="heading-{{ $i }}" style="background:#fff; box-shadow:#eaeaea 0 0 1px 1px;">
                              <div class="panel-title">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-{{ $i }}"
                                aria-expanded="false" aria-controls="collapse-{{ $i }}" style="font-size:14px; padding:5px; font-weight:500; text-shadow:#f5f5f5 1px 1px;">{{ $faq->question }}</a>
                              </div>
                            </div>
                            <div id="collapse-{{ $i }}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-{{ $i }}">
                              <div class="panel-body">
                              <div class="detailscontent">{!! $faq->answer !!}</div>


                              </div>
                            </div>
                          </div>
                        </div>
                     @endforeach
                    </div>


             @endif
          </div>
    </div>
    </div>
@endsection


@section('footer')
    @parent
@endsection

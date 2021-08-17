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
                	<h2 class="title">Branch List</h2>
            
    <div class="col-sm-12 col-xs-12">

        <div class="articleareas">
            @if($branch_division!="")
                   <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="false">
                   	@foreach($branch_division as $branchdiv)
                    	@php
                        	$allbranch = App\Branch::where('division_id',$branchdiv->id)->orderBy('id','asc');
                        @endphp
                        <div style="width:100%; height:auto; float:left; margin-bottom:10px">
                          <div class="panel panel-default faq_part">
                            <div class="panel-heading" role="tab" id="heading-{{ $branchdiv->id }}" 
                            style="background:#fff; box-shadow:#ccc 0 0 1px 1px; width:100%; float:left; padding:3px 10px;">
                              <div class="panel-title">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-{{ $branchdiv->id }}"
                                aria-expanded="false" aria-controls="collapse-{{ $branchdiv->id }}" 
                                style="font-size:15px; width:100% !important; float:left; color:#222357; font-weight:bold; font-family:Arial, Helvetica, sans-serif; text-align:left"> 
                                <i class="fa fa-caret-right"></i> {{ $branchdiv->name }} </a>
                              </div>
                            </div>
                            <div id="collapse-{{ $branchdiv->id }}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-{{ $branchdiv->id }}">
                              <div class="panel-body" style="padding:5px;">
                              		@if($allbranch->count() > 0)                                           
                                           	<table class="customtables" border="1" cellspacing="0" width="100%">
                                                    <thead>
                                                        <tr>
                                                          <th  style="width:20%;">Branch</th>
                                                          <th  style="width:30%;">Address</th> 
                                                          <th  style="width:25%;">Branch-in-charge</th>                                      
                                                          <th  style="width:25%;">Contact</th>
                                                      </tr>
                                                  </thead>
                                              </table>
                                          
                                           <div style="width:100%; height:300px; overflow:auto">
                                           <table class="customtables" border="1" cellspacing="0" width="100%">                                               
                                                   <tbody>
                                                <?php $i=0; ?>
                                                @foreach($allbranch->get() as $branch)
                                                <?php $i++;
                                                ?>
                    
                                                <tr>
                                                  <td  style="width:20%;"><strong>{{ $branch->name }}</strong></td>
                                                  <td  style="width:30%;">{!!  nl2br($branch->address) !!}</td>
                                                  <td  style="width:25%;">{!!  nl2br($branch->incharge) !!}</td>
                                                  <td  style="width:25%;">{!! nl2br($branch->contact) !!}</td>                                         
                                                </tr>
                                                @endforeach
                                                </tbody>
                                          </table> 
                                       </div>                                   
                                   @endif


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
    </div>
    </div>
    </div>
    </div>
    
@endsection


@section('footer')
    @parent
@endsection

@extends('layouts.app')

@section('title', 'Eishop')

@section('sidebar')
    @parent
@endsection
<style>
@import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css');
table th{
  font-family: BNG,SutonnyBanglaOMJ,SolaimanLipi;
}
</style>
@section('content')
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	 <div id="page" class="page">
          <div class="content-section">
   			 <div class="col-sm-12 col-xs-12" style="margin:0; padding:0 3px">
             	 <div class="content-section-header left">
                    <div class="col-sm-12">
                	<h2 class="title" style="margin-bottom:20px;font-family: BNG,SutonnyBanglaOMJ,SolaimanLipi; font-size:30px">নন-লাইফ বীমাকারী প্রতিষ্ঠানের নামঃ পাইওনিয়ার ইনস্যুরেন্স কোম্পানী লিমিটেড</h2>
                            @if($allemployee!="")
                                    <table id="responsive-datatable" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                <thead style="background:#C1DFFD;">
                                    <tr>
                                      <th width="4%">ক্রম নংঃ</th>
                                      <th width="15%">এজেন্টের নাম</th>  
                                      <th width="13%">ছবি</th>
                                      <th width="24%">ঠিকানা</th>
                                      <th width="24%">জাতীয় পরিচয় পত্র নম্বর</th>
                                      <th width="24%">জন্ম সনদ নম্বর</th>
                                      <th width="24%">পাস্পোর্ট নাম্বার</th>
                                      <th width="24%">মোবাইল নম্বর</th> 
                                      <th width="24%">এফএ কোড নম্বর</th> 
                                      <th width="24%">এজেন্টের লাইসেন্স নম্বর </th> 
                                      <th width="24%">লাইসেন্স কপি</th> 
                                      <th width="24%">এজেন্ট লাইসেন্স ইস্যু তারিখ</th> 
                                      <th width="24%">লাইসেন্স এর মেয়াদ শেষ তারিখ</th> 
                                      <th width="24%">কর্ম এলাকা</th> 
                                  </tr>
                			  </thead>
                               <tbody>
                			<?php $i=0; ?>
                            @foreach($allemployee as $employee)
                            <?php $i++;?>
                            <tr>
                              <td>{{ $i }}</td>
                              <td>{{ $employee->name }}</td>
                              <td><a href="{{ asset('uploads/agent/'.$employee->image) }}" target="_blank">
                              <img src="{{ asset('uploads/agent/'.$employee->image) }}" style="width:80px; height:90px" /></a></td>
							  <td>{{ $employee->address }}</td>	
                              <td>{{ $employee->nid }}</td>	
                              <td>{{ $employee->birth_certificate }}</td>	
                              <td>{{ $employee->passport }}</td>
                              <td>{{ $employee->mobile }}</td>	
                              <td>{{ $employee->afacode }}</td>	
                              <td>{{ $employee->license_no }}</td>	
                              <td><a href="{{ asset('uploads/agent/license/'.$employee->license_file) }}" target="_blank">
                              <img src="{{ asset('uploads/agent/license/'.$employee->license_file) }}" style="width:80px; height:90px" /></a></td>
                              <td>{{ $employee->license_issue_date }}</td>	
                              <td>{{ $employee->license_deadline }}</td>	
                              <td>{{ $employee->work_area }}</td>	                         
                            </tr>
                            @endforeach
            				</tbody>
                      </table>
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

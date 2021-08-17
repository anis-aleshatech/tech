@extends('layouts.app')
@section('seodetails')
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    
@endsection

@section('title', 'Welcome to Alesha Tech Ltd.')
@section('content')
  <div class="banner-area banner-bg-1">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="banner">
						<h2>Our Service</h2>
						<ul class="page-title-link">
							<li><a href="{{ route('home')}}">Home</a></li>
							<li><a href="{{ route('service') }}">Our Service</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

  <main id="main">
    <section id="about">
      <div class="container">
		<div class="row text-center">
				
                @if($services!="")
                    @foreach($services as $service)
                    <div class="col-md-4 col-sm-6">
                        <div class="about-item">
                            <div class="about-icon">
                                <a href="{{ route('service.details',$service->id) }}"><img src="{{ asset('uploads/service/'.$service->image) }}" style="width:100%; height:auto" /></a>
                            </div>
                            <div class="about-text">
                                <h3><a href="{{ route('service.details',$service->id) }}">{{ $service->name }}</a></h3>
                                <p>{!! Str::limit(strip_tags($service->details,130)) !!}</p>
                            </div>
                        </div>
                    </div>
                    @endforeach
                @endif
                
			</div>
      </div>          
    </section>

  </main>
        
@endsection

@section('footer')
    @parent
@endsection	
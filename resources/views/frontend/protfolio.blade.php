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
							<li><a href="{{ route('portfolio') }}">Our Portfolio</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

  <main id="main">
   <section id="portfolio" class="clearfix">
      <div class="container">
		<div class="row portfolio-container">

		@foreach($protfolios as $protfolio)
          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="{{ asset('uploads/protfolio/'.$protfolio->image) }}" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4><a href="#">{{ $protfolio->name }}</a></h4>
                <p>{!! Str::limit($protfolio->details,100) !!}</p>
                <div>
                  <a href="{{ asset('uploads/portfolio/'.$protfolio->image) }}" data-lightbox="portfolio" data-title="App 1" class="link-preview" title="Preview"><i class="ion ion-eye"></i></a>
                  <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>                
                  </div>
              </div>
            </div>
          </div>
        @endforeach

        </div>
      </div>          
    </section>

  </main>
        
@endsection

@section('footer')
    @parent
@endsection	
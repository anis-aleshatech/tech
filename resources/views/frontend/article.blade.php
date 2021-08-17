@extends('layouts.app')
@section('seodetails')
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    
@endsection

@section('title', 'Welcome to Alesha Tech Ltd.')
@section('content')
  <div class="banner-area banner-bg-1" style="background:url({{ asset('uploads/article/'.$articleImage) }})">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="banner">
						<h2>{{ $articleTitle }}</h2>
						<ul class="page-title-link">
							<li><a href="{{ route('home')}}">Home</a></li>
							<li><a href="{{ route('content',$menuslug->uri)}}">{{ $menuslug->title }}</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

  <main id="main">
    <section id="about">
      <div class="container">
        <header class="section-header">
          <h3>{{ $articleTitle }}</h3>
        </header>
		<div class="row about-container">
          <div class="col-lg-12 background order-lg-2 order-1 wow fadeInUp">
            @if($articleContent!="")
            	<p>{!! $articleContent !!}</p>
            @else
            	<h2>No data found</h2>
            @endif
          </div>
        </div>
      </div>          
    </section>

  </main>
        
@endsection

@section('footer')
    @parent
@endsection	
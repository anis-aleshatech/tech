<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>@yield('title')</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="{{ asset('assets/img/favicon.png') }}" rel="icon">
  <link href="{{ asset('assets/img/apple-touch-icon.png') }}" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="{{ asset('assets/lib/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="{{ asset('assets/lib/font-awesome/css/font-awesome.min.css') }}" rel="stylesheet">
  <link href="{{ asset('assets/lib/animate/animate.min.css') }}" rel="stylesheet">
  <link href="{{ asset('assets/lib/ionicons/css/ionicons.min.css') }}" rel="stylesheet">
  <link href="{{ asset('assets/lib/owlcarousel/owl.carousel.min.css') }}" rel="stylesheet">
  <link href="{{ asset('assets/lib/lightbox/css/lightbox.min.css') }}" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">

</head>

    <body>
    
       
        @section('sidebar')
        	<header id="header" class="fixed-top">
    <div class="container">

      <div class="logo float-left">
        <a href="{{ route('home')}}" class="scrollto"><img src="{{ asset('assets/img/logo.png') }}" alt="" class="img-fluid"></a>
      </div>

      <nav class="main-nav float-right d-none d-lg-block">
        <ul>
                          <li><a href="{{ route('home')}}">Home</a></li>
                          @foreach($menus as $menu)
                          	<?php
                            	$submenus = App\Models\Menu::where('parent_id',$menu->id)->where('sparent_id', NULL);
								//$submenus = App\Models\Menu::find($menu->id)->submenus;
							?>
                             @if($submenus->count()!=0)
                            	<li class="drop-down">
                             @else
                             	<li>
                             @endif
                            
                            @if($menu->page_structure=='Text')													
                                <a href="{{ route('content',$menu->uri)}}">	
                            @else
                                <a href="{{ route($menu->page_structure) }}">
                            @endif     
                            {{ $menu->title }}                            
                            </a>
                            	@if($submenus->count()!=0)
                                        <ul>
                                            @foreach($submenus->get() as $smenu)
                                                <?php
                                                    $lastmenus = App\Models\Menu::where('sparent_id',$smenu->id);												
                                                ?>
                                                
                                                @if($lastmenus->count()!=0)
                                                    <li class="drop-down">
                                                 @else
                                                    <li>
                                                 @endif
                                                                                           
                                                    @if($smenu->page_structure=='Text')													
                                                        <a href="{{ route('content',$smenu->uri)}}">
                                                    @else
                                                        <a href="{{ route($smenu->page_structure)}}">
                                                    @endif                                                  
                                                
                                                 {{ $smenu->title }}
                                                
                                                @if($lastmenus->count()!=0)
                                                    <i class="fa fa-angle-right" style="float:right; text-align:right"></i>
                                                @endif
                                                </a>
                                                
                                                    @if($lastmenus->count()!=0)
                                                      <ul>
                                                        @foreach($lastmenus->get() as $lmenu)
                                                            <li>                                                        
                                                                @if($lmenu->page_structure=='Text')													
                                                                    <a href="{{ route('content',$lmenu->uri)}}">	
                                                                @else
                                                                    <a href="{{ route($lmenu->page_structure)}}">
                                                                @endif
                                                                
                                                                {{ $lmenu->title }}</a>
                                                            </li>
                                                        @endforeach
                                                    </ul>
                                                    @endif
                                                </li>
                                            @endforeach
                                        </ul>
                                @endif
                            </li>
                          @endforeach                          
                        </ul>
      </nav><!-- .main-nav -->
      
    </div>
  </header>
    	@show

        @yield('content')
        
        
        @section('footer')
        	<footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6 footer-info">
            <h3>Alesha Tech Ltd.</h3>
            <p>Alesha Tech Ltd, group of industries has an emerging business heritage, a sparkling present and a glittering future. ‘Alesha’ is established in year 2018 by experienced, industrious and challenge seeking leaders.</p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
                          <li><a href="{{ route('home')}}">Home</a></li>
                          @foreach($menus as $menu)
                          	<?php
                            	$submenus = App\Models\Menu::where('parent_id',$menu->id)->where('sparent_id', NULL);
							?>
                             @if($submenus->count()!=0)
                            	<li class="drop-down">
                             @else
                             	<li>
                             @endif
                            
                            @if($menu->page_structure=='Text')													
                                <a href="{{ route('content',$menu->uri)}}">	
                            @else
                                <a href="{{ route($menu->page_structure) }}">
                            @endif     
                            {{ $menu->title }}                            
                            </a>
                            </li>
                          @endforeach                          
                        </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>Contact Us</h4>
            <p>
              Assurance Tower (5<sup>th</sup> Floor), <be>65/B Kamal Atarturk Avenue <br />Banani C/A, Dhaka - 1213, Bangladesh <br>
              <strong>Phone:</strong> +8809678414141<br>
              <strong>Email:</strong> info@aleshatech.com.bd<br>
            </p>

            <div class="social-links">
              <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
              <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
              <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
              <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
              <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>            </div>
          </div>

          <div class="col-lg-3 col-md-6 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>Get all latest updates, new Lunch, Career and more with alesha tech ltd</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit"  value="Subscribe">
            </form>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>Alesha Tech Ld.</strong>. All Rights Reserved
      </div>
      <div class="credits">
        Designed by <a href="#">Alesha Tech Ltd.</a>
      </div>
    </div>
  </footer>
  			 <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
              <script src="{{ asset('assets/lib/jquery/jquery.min.js') }}"></script>
              <script src="{{ asset('assets/lib/jquery/jquery-migrate.min.js') }}"></script>
              <script src="{{ asset('assets/lib/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
              <script src="{{ asset('assets/lib/easing/easing.min.js') }}"></script>
              <script src="{{ asset('assets/lib/mobile-nav/mobile-nav.js') }}"></script>
              <script src="{{ asset('assets/lib/wow/wow.min.js') }}"></script>
              <script src="{{ asset('assets/lib/waypoints/waypoints.min.js') }}"></script>
              <script src="{{ asset('assets/lib/counterup/counterup.min.js') }}"></script>
              <script src="{{ asset('assets/lib/owlcarousel/owl.carousel.min.js') }}"></script>
              <script src="{{ asset('assets/lib/isotope/isotope.pkgd.min.js') }}"></script>
              <script src="{{ asset('assets/lib/lightbox/js/lightbox.min.js') }}"></script>
              <script src="{{ asset('assets/contactform/contactform.js') }}"></script>
              <script src="{{ asset('assets/js/main.js') }}"></script>
          </body>
        </html>
        @show
   
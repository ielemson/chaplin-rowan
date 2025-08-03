 <!-- header-area-start -->
@php
$setting = \App\Models\Setting::find(1);
@endphp

 <header class="header6">
         <div class="headerTopSec">
            <div class="container">
                <div class="row">                       
                    <div class="col-md-8 col-sm-12 col-xs-12 topSecLeft "> 
                     <h3>WELCOME TO CHAPLINROWAN</h3>
                    </div> 
                    <div class="col-md-4 col-sm-12 col-xs-12 topSecRight "> 
                     <div class="col-md-8 col-sm-12 col-xs-12  "> 
                        <div class="header6Social"> 
                           <a href="{{ $setting->facebook }}"><i class="fa fa-facebook" aria-hidden="true"></i></a> 
                                <a href="{{ $setting->twitter }}"><i class="fa fa-twitter" aria-hidden="true"></i></a> 
                                <a href="{{ $setting->linkedin }}"><i class="fa fa-linkedin" aria-hidden="true"></i></a> 
                                {{-- <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>  --}}
                        </div> 
                      </div>
                     <div class="col-md-4 col-sm-12 col-xs-12">  
                        <div class=" search-fl">
                           <button name="search" type="button" class="search-btn"  data-toggle="modal" data-target=".bs-example-modal-lg"></button> 
                        </div>
                        <button class="sideOpenbtn sidebarRespButton" onclick="openSideNav()">
                           <span class="sr-only">Toggle navigation</span>
                           <span class="ic-bar"></span>
                           <span class="ic-bar"></span>
                           <span class="ic-bar"></span>
                        </button>
                        
                      </div>
                         
                    </div>           
                </div>
             </div> 
         </div>
         <div class="headerMiddleSec">
          <div class="container">
             <div class="row">                       
                 <div class="col-md-6 col-sm-12 col-xs-12 logoSec "> 
                     <a href="{{url("/")}}" class="logo">
                        <img src="{{ asset("images/settings/$setting->website_logo_dark") }}" class="img-responsive" alt="logo">
                     </a>
                 </div>
                 <div class="col-md-6 col-sm-12 col-xs-12 addressSec "> 
                  <ul class="header-info">
                     <li class="address">
                        <b>{{ Str::limit( $setting->address, 40) }}</b>
                     </li>
                     <li class="phnClass phn">
                        <b>Call Us</b><br/>{{ $setting->phone }}
                     </li>
                     <li class="responsive_search-fl">
                        <button name="search" type="button" class="search-btn"  data-toggle="modal" data-target=".bs-example-modal-lg"></button> 
                     </li>
                     <li class="responsiveSide">
                        <button class="sideOpenbtn sidebarRespButton" onclick="openSideNav()">
                           <span class="sr-only">Toggle navigation</span>
                           <span class="ic-bar"></span>
                           <span class="ic-bar"></span>
                           <span class="ic-bar"></span>
                        </button>
                     </li>
                      </ul>
                 </div> 
             </div>      
          </div> 
       </div> 
         <nav id="main-navigation-wrapper" class="navbar navbar-default navbar2-wrap">
            <div class="container">
               <div class="navbar-header">
                  <div class="logo-menu"><img src="{{ asset("images/settings/$setting->website_logo_light") }}" alt="{{ asset("images/settings/$setting->website_title") }}" ></div>
                  <button type="button" data-toggle="collapse" data-target="#main-navigation" aria-expanded="false" class="navbar-toggle collapsed"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
               </div>
               <div class="var2-nav">
                  <div id="main-navigation" class="collapse navbar-collapse">
                     <ul class="nav navbar-nav">
                        <li class="dropdown ">
                           <a href="{{url("/")}}" class="{{ Request::is('/') ? 'active' : '' }}">Home</a><i class="fa fa-chevron-down active"></i>
                         
                        </li>
                        <li class="dropdown">
                           <a href="javascript:;">About Us</a><i class="fa fa-chevron-down"></i>
                           <ul class="dropdown-submenu">
                              <li><a class="{{ Route::is('about') ? 'active' : '' }}" href="{{route("about")}}">Who We Are</a></li>
                              <li><a class="{{ Route::is('our.mission') ? 'active' : '' }}" href="{{route("our.mission")}}">Our Mission</a></li>
                              <li><a class="{{ Route::is('our.vision') ? 'active' : '' }}" href="{{route("our.vision")}}">Our Vision</a></li>
                           </ul>
                        </li>
                      @if (count($services) > 0)
                           <li class="dropdown">
                        <a href="javascript:;">Our Services</a><i class="fa fa-chevron-down"></i>
                        <ul class="dropdown-submenu">
                          @foreach ($services as $service)
                             <li><a href="{{ route("ourservice",$service->slug) }}">{{ $service->title }}</a></li>
                          @endforeach
                        </ul>
                     </li> 
                      @endif

                      @if (count($policies) > 0)
                        <li class="dropdown">
                           <a href="#">Policies</a><i class="fa fa-chevron-down"></i>
                           <ul class="dropdown-submenu">
                          @foreach ($policies as $policy)
                             <li><a href="{{ route("ourpolicy",$policy->slug) }}">{{ $policy->title }}</a></li>
                          @endforeach
                        </ul>
                        </li>
                        @endif
                        
                        <li class="dropdown">
                           <a href="https://www.chaplinrowanltd.com:2096/" target="_blank">Staff Login</a><i class="fa fa-chevron-down"></i>
                        </li>
                        
                        <li><a class="{{ Route::is('contact') ? 'active' : '' }}" href="{{route("contact")}}">contact us</a></li>
                     </ul>
                     <a class="header-requestbtn header2-requestbtn hvr-bounce-to-right" href="{{route("contact")}}">Request A Quote</a>
                  </div>
               </div>
            </div>
         </nav>
         <div class="headerSidebar" id="headerSidebar">
            <div class="sidebar">
               <div class="sideCloseButton">
                   <a href="javascript:void(0)" class="sideClosebtn" onclick="closeSideNav()">×</a>
                </div>
               <div class="sideLogo">
                   <a href="{{url("/")}}" class="logo">
                         <img src="{{ asset("images/settings/$setting->website_logo_dark") }}" class="img-responsive" alt="logo">
                     </a>
               </div><br>
               <p class="textQuote">{{ Str::limit( $setting->who_we_are, 100) }}</p>
               <div class="iconArea">
                  <div class="row">
                     <div class="col-md-2"><i class="fa fa-globe"></i></div>
                     <div class="col-md-10">
                        <h5><u>{{ Str::limit( $setting->address, 40) }}</u></h5>
                        <p>Lagos, Nigeria</p>
                     </div>
                     <div class="col-md-2"><i class="fa fa-phone"></i></div>
                     <div class="col-md-10">
                        <h5><u>Call Us: {{ $setting->phone }}</u></h5>
                        <p>(Mon - Fri)</p>
                     </div>
                     <div class="col-md-2"><i class="fa fa-clock-o"></i></div>
                     <div class="col-md-10">
                        <h5><u>Monday - Friday</u></h5>
                        <p>(10am - 05pm)</p>
                     </div>
                  </div>
               </div>
               <div class="contactButton">
                  <div class="">
                     <a class="header-contctbtn hvr-bounce-to-right" href="#"><i class="fa fa-paper-plane"></i>Contact Us</a>
                  </div>
               </div>
               <div class="sideBarSocial"> 
                  <a href="#">
                     <i class="fa fa-facebook" aria-hidden="true"></i>
                  </a>
                  <a href="#">
                     <i class="fa fa-twitter" aria-hidden="true"></i>
                  </a>
                  <a href="#">
                     <i class="fa fa-linkedin" aria-hidden="true"></i>
                  </a>
                  <a href="#">
                     <i class="fa fa-pinterest" aria-hidden="true"></i>
                  </a>
               </div>
            </div>
         </div>   
</header>




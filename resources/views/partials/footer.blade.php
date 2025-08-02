@php
$setting = \App\Models\Setting::find(1);
@endphp


<footer>
        
         <div class="ftr-section">
            <div class="container">
               <ul class="footer-info">
                  <li class="ftr-loc">{{$setting->address}}</li>
                  <li class="ftr-phn">{{$setting->phone}}</li>
                  <li class="ftr-msg">{{$setting->email}}</li>
               </ul>
               <div class="row">
                  <div class="col-md-4 col-sm-6 col-xs-12  ftr-about-text">
                     <h6>About Us</h6>
                     <p class="marbtm20 line-height26">
                        Chaplin Rowan Services Limited is an Oil and Gas servicing and support company, with a vision to provide dependable, cost effective.</p>
                     <a class="ftr-read-more" href="{{route("about")}}">Read More</a>
                  </div>
                  <div class="col-md-3 col-sm-6 col-xs-12 ftr-sol-column">
                     <h6>Our Solutions</h6>
                     <ul class="footer-link">
                          @foreach ($services as $service)
                           <li><a href="{{ route("ourservice",$service->slug) }}">{{ $service->title }}</a></li>
                             @endforeach
                      
                     </ul>
                  </div>
                  <div class="col-md-2 col-sm-6 col-xs-12 ftr-link-column">
                     <h6>Our Policies</h6>
                     <ul class="footer-link">
                         @foreach ($policies as $policy)
                         <li><a href="{{ route("ourpolicy",$policy->slug) }}">{{ $policy->title }}</a></li>
                             @endforeach
                        
                     </ul>
                  </div>
                  <div class="col-md-3 col-sm-6 col-xs-12 ftr-follow-column pull-right">
                     <h6>Follow Us</h6>
                     <div class="header-socials footer-socials"> 
                        <a href="{{$setting->facebook}}"><i class="fa fa-facebook" aria-hidden="true"></i></a> 
                        <a href="{{$setting->twitter}}"><i class="fa fa-twitter" aria-hidden="true"></i></a> 
                        <a href="{{$setting->instagram}}"><i class="fa fa-instagram" aria-hidden="true"></i></a> 
                        <a href="{{$setting->linkedin}}"><i class="fa fa-linkedin" aria-hidden="true"></i></a> 
                     </div>
                     <span class="ftr-logo img"><img src="{{ asset("images/settings/$setting->website_logo_light") }}" class="img-responsive" alt="logo-image"></span>
                  </div>
               </div>
               <div class="footer-btm">
                  <div class="col-md-6 col-sm-6 col-xs-12 pad-left_zero pad-right_zero">
                     <p>Copyright © {{Date('Y')}} Chaplinrowan. All Rights Reserved.</p>
                  </div>
                  <div class="col-md-4 col-sm-6 col-xs-12 pad-left_zero pad-right_zero pull-right">
                     <p class="text-right">Developed by: <a href="javascript:;">Chaplinrowan</a></p>
                  </div>
               </div>
            </div>
         </div>
      </footer>

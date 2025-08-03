@extends("layouts.app",["title"=>"Our Services"])
@php
$setting = \App\Models\Setting::find(1);
@endphp
@section("home_slider")
    @include("partials.page_bannerr",["header"=>"Our Services"])
@endsection

@section("content")
   
 <!--=========Services Start============-->
      <section class="pad100-50-top-bottom">
         <div class="container">
            <div class="row ">
               <div class="head-section service-head other-heading">
                  <div class="col-lg-3 col-md-4 col-sm-5 col-xs-12">
                     <h3>OUR services</h3>
                  </div>
                  <div class="col-lg-9 col-md-8 col-sm-7 col-xs-12">
                     <p class="fnt-18">We provide tailored industrial solutions across oil & gas, manufacturing, infrastructure, and energy sectors. From operations and maintenance to procurement, fabrication, and safety supply, our services are built to meet global standards and exceed client expectations.</p>
                  </div>
               </div>

               @foreach ($services as $service)
                   {{-- <div class="col-md-4 col-sm-4 col-xs-12 marbtm50 service-list-column">
                  <a href="{{ route("ourservice",$service->slug) }}">
                     <span class="image_hover"> <img src="{{ asset("$service->image") }}" class="img-responsive zoom_img_effect" alt="Manufacture-image"></span>
                     <div class="service-heading service-manufactureicon">
                        <h5>{{$service->title}}</h5>
                        <a href="{{ route("ourservice",$service->slug) }}" class="read-more-link">Read More</a>
                     </div>
                  </a>
               </div> --}}
                  <div class="col-md-4 col-sm-4 col-xs-12 marbtm50 service-list-column">
                  <a href="{{ route("ourservice",$service->slug) }}">
                     <span class="image_hover"> <img src="{{ asset("$service->image") }}" class="img-responsive zoom_img_effect" alt="{{$service->title}}"></span>
                     <div class="service-heading">
                        <h5 sty>{{$service->title}}</h5>
                        <a href="{{ route("ourservice",$service->slug) }}" class="read-more-link">Read More</a>
                     </div>
                  </a>
               </div>
               @endforeach

            </div>
         </div>
      </section>
      <!--=========Services end============-->
@endsection
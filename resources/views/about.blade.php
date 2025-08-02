@extends("layouts.app",["title"=>"About Us"])

@php
$setting = \App\Models\Setting::find(1);
@endphp

@section("home_slider")
    @include("partials.page_bannerr",["header"=>"About Us"])
@endsection
@section("content")
      <!--=========Why Choose Start============-->
      <section class="bestthing-section why-choose-section why-choose-section_01">
         <div class="container">
            <div class="row ">
               <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bestthing-text-column">
                  <h3>About Us</h3>
                  <p class="fnt-17" style="text-align: justify">
                    {{$setting->about}}
                  </p>
               </div>
            </div>
         </div>
       
      </section>
      <!--=========Why Choose end============-->
@endsection
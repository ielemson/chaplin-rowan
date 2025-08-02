@extends("layouts.app")
@php
$setting = \App\Models\Setting::find(1);
@endphp
@section("title","Our Services")
@section("content")
    @include("partials.page-header")
    @include("partials.page-hero",["title"=>"Our Services"])

    <section class="service-section-4 pt-120 pb-120">
        <div class="container">
            <div class="row gy-4 fade-wrapper">
                @if($services->isEmpty())
            <div class="alert alert-info">No services found</div>
        @else
          
                {{-- @foreach ($services as $service)
                <div class="col-lg-4 col-md-6">
                    <div class="service-item-4 fade-top">
                        <div class="service-thumb">
                            <img class="main-img" src="{{ asset($service->image) }}" alt="{{ $service->title }}">
                        </div>
                        <div class="service-content">
                            <h3 class="title"><a href="{{ route("ourservice",$service->slug) }}">{{ $service->title }}</a></h3>
                            <p>{{ Str::limit($service->content, 100, '...') }}</p>
                            <a href="{{ route("ourservice",$service->slug) }}" class="read-more">Read Details <i class="fa-regular fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div> 
                @endforeach --}}

                <div class="row fade-wrapper gy-lg-0 gy-4 justify-content-center">
                    @foreach ($services as $service)
                         <div class="col-lg-4 col-md-6 fade-top">
                        <div class="service-item">
                            <div class="icon"><img src="{{ asset($service->image) }}" alt="icon"></div>
                            <div class="service-content">
                                <h3 class="title"><a href="{{ route("ourservice",$service->slug) }}">{{ $service->title }}</a></h3>
                                <p>{{ \Illuminate\Support\Str::limit($service->content, 100, '...') }}</p>
                                <a href="{{ route("ourservice",$service->slug) }}" class="bz-primary-btn">Read More <i class="fa-regular fa-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                    @endforeach
            
                </div>
      
        @endif
                 
            </div>
        </div>
    </section>
    <!-- ./ service-section -->

@endsection
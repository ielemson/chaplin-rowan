@extends("layouts.app")
@php
$setting = \App\Models\Setting::find(1);
@endphp
@section("title",$service->title)
@section("content")
    @include("partials.page-header")
    @include("partials.page-hero",["title"=>$service->title])


    <section class="service-details pt-60 pb-20">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="service-details-content">
                        <h2 class="details-title mb-20 mt-30">{{ $service->title }}</h2>
                        <p class="mb-40" style="text-align: justify">
                            {!! $service->content !!}
                        </p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="service-widget">
                        <h4 class="widget-header">Our Services</h4>
                        <ul class="category-list">
                            @foreach ($services as $service)
                            <li><a href="{{ route("ourservice",$service->slug) }}">{{ $service->title }}</a></li>
                            @endforeach 
                        </ul>
                    </div> 
                </div>
            </div>
        </div>
    </section>
@endsection

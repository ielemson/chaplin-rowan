@php
$setting = \App\Models\Setting::find(1);
@endphp
@extends('layouts.app', ['title' => $ourservice->title])

@section('home_slider')
    @include('partials.page_bannerr', ['header' => $ourservice->title])
@endsection

@section('content')
    <section class="pad100-top-bottom">
        <div class="container">
            <div class="row">

                <!--=========Servie Right Start============-->
                <div class="col-md-8 right-column">
                    <div class="service-right-desc">
                        <span class="image_hover">
                            <img src="{{ asset($ourservice->image) }}" class="img-responsive zoom_img_effect"
                                alt="{{ $ourservice->title }}">
                        </span>
                        <h5>{{ $ourservice->title }}</h5>
                        {!! $ourservice->content !!}
                    </div>
                </div>
                <!--=========Servie Right end============-->
                <!--=========Servie Left Start============-->
                <div class="col-md-4 left-column">
                    <ul class="category-list">
                        @foreach ($services as $service)
                            <li>
                                <a href="{{ route('ourservice', $service->slug) }}"
                                    class="{{ request()->routeIs('ourservice') && request()->route('slug') == $service->slug ? 'active-category' : '' }}">
                                    {{ $service->title }}
                                </a>
                            </li>
                        @endforeach
                    </ul>
                    <div class="contact-help">
                        <div class="office-info-col wdt-100">
                            <h4>CONTACT US </h4>
                            <ul class="office-information">
                                <li class="office-loc">
                                    <span class="info-txt">{{$setting->address}}</span>
                                </li> 
                                 <li class="office-msg">
                                    <span class="info-txt fnt_17">{{$setting->email}}</span>
                                </li>
                                <li class="office-phn">
                                    <span class="info-txt fnt_17">{{$setting->phone}}</span>
                                </li>
                              
                            </ul>
                        </div>
                    </div>

                </div>
                <!--=========Servie Left end============-->

            </div>
        </div>
    </section>
@endsection

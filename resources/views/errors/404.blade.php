

@extends("layouts.app")
@php
$setting = \App\Models\Setting::find(1);
@endphp
@section("content")
    @include("partials.page-header")
    @include("partials.page-hero",["title"=>"Error 404"])
    <section class="error-section pt-120 pb-120">
        <div class="container">
            <div class="error-content text-center">
                <img src="{{ asset("assets/img/images/error-img.png") }}" alt="img">
                <h2 class="text">Page Not Found</h2>
                <p class="mb-30">The page you are looking for was moved, removed, renamed <br>
                    or never existed.
                </p>
                <a href="{{ route("welcome") }}" class="bz-primary-btn">Back to home</a>
            </div>
        </div>
    </section>
    <!-- ./ error-section -->
@endsection
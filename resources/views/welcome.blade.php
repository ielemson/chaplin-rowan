@php
    $setting = \App\Models\Setting::find(1);
@endphp

@extends("layouts.app",["title"=>"Home"])

@if (count($sliders) > 0)
    @section("home_slider")
    @include("partials.slider")
@endsection

@endif
@section("content")
@include("partials.who_section")
@include("partials.quality_assurance")
@include("partials.service_solutions")
@include("partials.get_intouch")
@include("partials.google_map")

@endsection
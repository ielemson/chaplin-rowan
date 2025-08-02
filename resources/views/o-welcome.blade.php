@extends("layouts.app")
@php
$setting = \App\Models\Setting::find(1);
@endphp
@section('title', 'Home')
@section("content")
@include("partials.header")

@include("partials.side-area")
<!--/.sidebar-area-->

<div id="preloader">
    <div class="loading" data-loading-text="Palpresmedia"></div>
</div>
<!-- ./ preloader -->


@include("partials.hero-section")
<!-- ./ hero-section -->

@include("partials.about-section")

<!-- ./ about-section -->

@if (count($services)>0)
@include("partials.service-section")
@endif
<!-- ./ service-section -->
@if (count($portfolios)> 0)
@include("partials.portfolio")
@endif

@if (count($teamMembers)>0)
@include("partials.team-members")
@endif
<!-- ./ team-section -->

@include("partials.why-choose-us")

@if (count($blogs)> 0)
   @include("partials.blog-section")
<!-- ./ blog-section --> 
@endif

<!-- ./ sponsor-section -->
@endsection
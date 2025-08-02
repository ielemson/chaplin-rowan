@php
$setting = \App\Models\Setting::find(1);
@endphp
<!DOCTYPE html>
<html class="no-js" lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{ $setting->meta_description }}">
    <meta name="keywords" content="{{ $setting->met_tag }}">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ $setting->website_title }} | {{$title ?? ""}}</title>

    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset("images/settings/$setting->website_favicon") }}">
    <!-- CSS here -->
    <link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('assets/css/animate.min.css') }}">
    <link href="{{ asset('asset/css/responsive_bootstrap_carousel.css') }}" rel="stylesheet" media="all">
    @stack("styles")
</head>

<body class="home6">
    <!--=========header start============-->
    @include('partials.header')
    <!--=========header end============-->
    <!--=========home banner start============-->
    @yield('home_slider')
    <!--=========home banner end============-->

    @yield('content')

    <!--=========Footer Start============-->
    @include('partials.footer')

    <!--=========Footer end============-->
    <script src="{{ asset('assets/js/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/js/jquery.touchSwipe.min.js') }}"></script>
    <script src="{{ asset('assets/js/responsive_bootstrap_carousel.js') }}"></script>
    <script src="{{ asset('assets/js/custom.js') }}"></script>
    <script src="{{ asset('assets/js/slick.js') }}"></script>
    @stack("scripts")
</body>

</html>

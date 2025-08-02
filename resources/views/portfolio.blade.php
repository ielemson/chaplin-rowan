@extends("layouts.app")
@php
$setting = \App\Models\Setting::find(1);
@endphp
@section("title",$portfolio->title)
@section("content")
    @include("partials.page-header")
    @include("partials.page-hero",["title"=>$portfolio->title])

    {{-- <section class="project-details pt-120 pb-120">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="project-details-wrap">
                        <div class="project-details-thumb">
                            <img src="{{ asset('storage/' . $portfolio->cover_picture) }}" alt="img">
                            <div class="details-list-wrap">
                                <h4 class="list-title">Project Information</h4>
                                <ul class="details-list">
                                    <li>
                                        <div class="icon"><i class="fa-solid fa-user"></i></div>
                                        <div class="content">
                                            <span>Clients:</span>
                                            <h4 class="title">{{ $portfolio->project_client }}</h4>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon"><i class="fa-solid fa-layer-group"></i></div>
                                        <div class="content">
                                            <span>Category:</span>
                                            <h4 class="title">{{ $portfolio->project_category }}</h4>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon"><i class="fa-sharp fa-solid fa-calendar-days"></i></div>
                                        <div class="content">
                                            <span>Date:</span>
                                            <h4 class="title">{{ \Carbon\Carbon::parse($portfolio->project_date)->format('d M, Y') }}</h4>
                                        </div>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                        <h3 class="details-title">{{ $portfolio->title }}</h3>
                        <p class="mb-50 desc" style="text-align: justify">
                        {!! $portfolio->content !!}    
                        </p>
            
                    </div>
                </div>
            </div>
        </div>
    </section> --}}
    <!-- ./ about-section -->

{{-- 
    <section class="blog-section pt-120 pb-120 fade-wrapper">
        <div class="container">
            <div class="section-heading text-center">
                <h4 class="sub-heading" data-text-animation="fade-in" data-duration="1.5"><span class="left-shape"></span>News Blog</h4>
                <h2 class="section-title mb-0" data-text-animation data-split="word" data-duration="1">Latest News & Articles</h2>
            </div>
            <div class="row gy-4 justify-content-center">
                <div class="col-lg-4 col-md-6">
                    <div class="post-card fade-top">
                        <div class="post-thumb">
                            <img src="assets/img/blog/post-1.jpg" alt="post">
                        </div>
                        <div class="post-content-wrap">
                            <div class="post-content">
                                <ul class="post-meta">
                                    <li><i class="fa-regular fa-calendar"></i>24 Feb, 2024</li>
                                    <li><i class="fa-regular fa-user"></i>by admin</li>
                                </ul>
                                <h3 class="title"><a href="blog-details.html">Developer within team are
                                    responsible for creating</a></h3>
                            </div>
                            <div class="post-bottom">
                                <a class="read-more" href="blog-details.html">Read More<i class="fa-solid fa-chevrons-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="post-card fade-top">
                        <div class="post-thumb">
                            <img src="assets/img/blog/post-2.jpg" alt="post">
                        </div>
                        <div class="post-content-wrap">
                            <div class="post-content">
                                <ul class="post-meta">
                                    <li><i class="fa-regular fa-calendar"></i>24 Feb, 2024</li>
                                    <li><i class="fa-regular fa-user"></i>by admin</li>
                                </ul>
                                <h3 class="title"><a href="blog-details.html">Insights from Top Business Consultancy Experts</a></h3>
                            </div>
                            <div class="post-bottom">
                                <a class="read-more" href="blog-details.html">Read More<i class="fa-solid fa-chevrons-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="post-card fade-top">
                        <div class="post-thumb">
                            <img src="assets/img/blog/post-3.jpg" alt="post">
                        </div>
                        <div class="post-content-wrap">
                            <div class="post-content">
                                <ul class="post-meta">
                                    <li><i class="fa-regular fa-calendar"></i>24 Feb, 2024</li>
                                    <li><i class="fa-regular fa-user"></i>by admin</li>
                                </ul>
                                <h3 class="title"><a href="blog-details.html">How Business Consultancy Propels Companies...</a></h3>
                            </div>
                            <div class="post-bottom">
                                <a class="read-more" href="blog-details.html">Read More<i class="fa-solid fa-chevrons-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> --}}

    <section class="blog-details pt-130 pb-130">
        <div class="container">
            <div class="row gy-5">
                <div class="col-lg-8 col-md-12">
                    <div class="blog-details-wrap">
                        <div class="blog-details-img mb-40">
                            <img src="{{ asset('storage/' . $portfolio->cover_picture) }}" alt="blog">
                        </div>
                        <ul class="post-meta">
                            <li><i class="fa-regular fa-calendar"></i>  {{ Carbon\Carbon::parse($portfolio->created_at)->isoFormat('MMM DD YY') }}</li>
                            <li><i class="fa-regular fa-user"></i>by admin</li>
                        </ul>
                        <div class="blog-details-content">
                            <h2 class="details-title mb-25">{{ $portfolio->project_client }}</h2>
                            <p class="mb-40">
                                {!! $portfolio->content !!}  
                            </p>
                        </div>
                    </div>
                </div>
                <!-- Sidebar Widgets -->
                <div class="col-lg-4">
                    <div class="sidebar-widget">
                        <h3 class="widget-title">Recent Portfolio</h3>
                        @foreach ($portfolios as $portfolio)
                            <div class="sidebar-post">
                            <img src="{{ asset('storage/' . $portfolio->cover_picture) }}" alt="post">
                            <div class="post-content">
                                <ul class="post-meta">
                                    <li><i class="fa-light fa-circle-user"></i>by Admin</li>
                                </ul>
                                <h3 class="title"><a href="{{ route("ourportfolio",$portfolio->slug) }}">{{$portfolio->title}}</a></h3>
                            </div>
                        </div> 
                        @endforeach
                       
                        
                    </div>
                    @if ($portfolio->gallery)
                    @php
                        $galleryImages = json_decode($portfolio->gallery, true);
                        // dd($galleryImages);
                    @endphp
                    
                    <div class="sidebar-widget">
                        <h3 class="widget-title">Gallery</h3>
                        <div class="blog-gallery-wrap">

                            @foreach (json_decode($portfolio->gallery) as $image)
                            {{-- <div class="col-md-4 mb-4">
                                <div class="card h-100">
                                    <img src="" class="card-img-top" alt="Gallery Image">
                                    <div class="card-body">
                                        <p class="card-text">Gallery Image</p>
                                    </div>
                                </div>
                            </div> --}}
                            <div class="gallary-img">
                                <a href="{{ asset('storage/' . $image) }}" class="img-popup venobox"><img src="{{ asset('storage/' . $image) }}" alt="img" style="width: 100%; height:15vh"></a>
                            </div>
                        @endforeach   
                        </div>
                    </div>
                    @endif
                </div>
            </div>
        </div>
    </section>
@endsection
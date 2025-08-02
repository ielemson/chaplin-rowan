@extends("layouts.app")
@php
$setting = \App\Models\Setting::find(1);
@endphp
@section('title', $blog->title)
@section("content")
    @include("partials.page-header")
    @include("partials.page-hero",["title"=>$blog->title])

    <section class="blog-details pt-130 pb-130">
        <div class="container">
            <div class="row gy-5">
                <div class="col-lg-8 col-md-12">
                    <div class="blog-details-wrap">
                        <div class="blog-details-img mb-40">
                            <img src="{{ asset('images/' . $blog->image) }}" alt="{{ $blog->title }}">
                        </div>
                        <ul class="post-meta">
                            <li><i class="fa-regular fa-calendar"></i>{{ \Carbon\Carbon::parse($blog->created_at)->format('d M, Y') }}</li>
                            <li><i class="fa-regular fa-user"></i>by admin</li>
                        </ul>
                        <div class="blog-details-content">
                            <h2 class="details-title mb-25">{{ $blog->title }}</h2>
                            <p style="text-align: justify">
                                {!! $blog->content !!}
                            </p>
                            
                        </div>
                      
                     
                        
                        <!-- ./ form-wrap -->
                    </div>
                </div>
                <!-- Sidebar Widgets -->
                <div class="col-lg-4">
                    
                    <div class="sidebar-widget">
                        <h3 class="widget-title">Recent Posts</h3>
                       
                      @foreach ($blogs as $post)
                      <div class="sidebar-post">
                        <img src="{{ asset('images/' . $post->image) }}" alt="post">
                        <div class="post-content">
                            <ul class="post-meta">
                                <li><i class="fa-light fa-circle-user"></i>{{ $post->title }}</li>
                            </ul>
                            {{-- <h3 class="title"><a href="{{ route("blog_details",$post->slug) }}">
                                {{ \Illuminate\Support\Str::limit($post->content, 50, '...') }}
                            </a></h3> --}}
                        </div>
                    </div>
                      @endforeach
                    </div>
                    {{-- <div class="sidebar-widget">
                        <h3 class="widget-title">Categories</h3>
                        <ul class="category-list">
                            <li class="active"><a href="#">Cleaning Services <i class="fa-sharp fa-regular fa-arrow-right"></i></a></li>
                            <li><a href="#">IT Services <i class="fa-sharp fa-regular fa-arrow-right"></i></a></li>
                            <li><a href="#">Business Services <i class="fa-sharp fa-regular fa-arrow-right"></i></a></li>
                            <li><a href="#">Strategic Services <i class="fa-sharp fa-regular fa-arrow-right"></i></a></li>
                            <li><a href="#">Branding Services <i class="fa-sharp fa-regular fa-arrow-right"></i></a></li>
                        </ul>
                    </div> --}}
                    {{-- <div class="sidebar-widget">
                        <h3 class="widget-title">Gallery</h3>
                        <div class="blog-gallery-wrap">
                            <div class="gallary-img">
                                <a href="assets/img/blog/blog-inner-1.png" class="img-popup venobox"><img src="assets/img/blog/blog-gallery-1.png" alt="img"></a>
                            </div>
                            <div class="gallary-img">
                                <a href="assets/img/blog/blog-inner-2.png" class="img-popup venobox"><img src="assets/img/blog/blog-gallery-2.png" alt="img"></a>
                            </div>
                            <div class="gallary-img">
                                <a href="assets/img/blog/blog-inner-3.png" class="img-popup venobox"><img src="assets/img/blog/blog-gallery-3.png" alt="img"></a>
                            </div>
                            <div class="gallary-img">
                                <a href="assets/img/blog/blog-inner-4.png" class="img-popup venobox"><img src="assets/img/blog/blog-gallery-4.png" alt="img"></a>
                            </div>
                            <div class="gallary-img">
                                <a href="assets/img/blog/blog-inner-1.png" class="img-popup venobox"><img src="assets/img/blog/blog-gallery-5.png" alt="img"></a>
                            </div>
                            <div class="gallary-img">
                                <a href="assets/img/blog/blog-inner-2.png" class="img-popup venobox"><img src="assets/img/blog/blog-gallery-6.png" alt="img"></a>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar-widget sticky-widget">
                        <h3 class="widget-title">Tags</h3>
                        <ul class="tags">
                            <li><a href="#">Advice</a></li>
                            <li><a href="#">Author</a></li>
                            <li><a href="#">Tips</a></li>
                            <li><a href="#">Marketing</a></li>
                            <li><a href="#">UI/UX Design</a></li>
                            <li><a href="#">Development</a></li>
                            <li><a href="#">Speed</a></li>
                        </ul>
                    </div> --}}
                </div>
            </div>
        </div>
    </section>
    <!-- ./ about-section -->

@endsection
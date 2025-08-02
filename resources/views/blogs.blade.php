@extends("layouts.app")

@section('title', 'Our Blog')
@section("content")
    @include("partials.page-header")
    @include("partials.page-hero",["title"=>"Our Blog"])

    <section class="blog-section pt-60 pb-60 fade-wrapper">
        <div class="container">
            <div class="row gy-4 justify-content-center">

             @if (count($blogs)> 0)
             @foreach ($blogs as $blog)
             <div class="col-lg-4 col-md-6">
                <div class="post-card fade-top">
                    <div class="post-thumb">
                        <img src="{{ asset('images/' . $blog->image) }}" alt="post">
                    </div>
                    <div class="post-content-wrap">
                        <div class="post-content">
                            <ul class="post-meta">
                                <li><i class="fa-regular fa-calendar"></i>{{ \Carbon\Carbon::parse($blog->created_at)->format('d M, Y') }}</li>
                                <li><i class="fa-regular fa-user"></i>by admin</li>
                            </ul>
                            <h3 class="title"><a href="{{ route("blog_details",$blog->slug) }}">{{ $blog->title }}</a></h3>
                        </div>
                        <div class="post-bottom">
                            <a class="read-more" href="{{ route("blog_details",$blog->slug) }}">Read More<i class="fa-solid fa-chevrons-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
             @endforeach
               @else
               <section class="error-section">
                <div class="container">
                    <div class="error-content text-center">
                        <h2 class="text">Blog Not Found</h2>
                        <p class="mb-30">No blog post was found. Check back later
                        </p>
                        <a href="{{ route("welcome") }}" class="bz-primary-btn">Back to home</a>
                    </div>
                </div>
            </section> 
             @endif
              
            </div>
        </div>
    </section>
@endsection
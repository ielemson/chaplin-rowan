<section class="blog-section pt-120 pb-120 fade-wrapper">
    <div class="container">
        <div class="section-heading text-center">
            <h4 class="sub-heading" data-text-animation="fade-in" data-duration="1.5"><span class="left-shape"></span>News Blog</h4>
            <h2 class="section-title mb-0" data-text-animation data-split="word" data-duration="1">Latest News & Articles</h2>
        </div>
        <div class="row gy-4 justify-content-center">
           @foreach ($blogs as $blog)
           <div class="col-lg-4 col-md-6">
            <div class="post-card fade-top">
                <div class="post-thumb">
                    <img src="{{ asset('images/' . $blog->image) }}" alt="{{ $blog->title }}">
                </div>
                <div class="post-content-wrap">
                    <div class="post-content">
                        <ul class="post-meta">
                            <li><i class="fa-regular fa-calendar"></i>24 Feb, 2024</li>
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
        </div>
    </div>
</section>
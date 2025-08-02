<section class="project-section pt-120 pb-120" >
    <div class="bg-shape" data-background="{{ asset("assets/img/bg-img/project-bg.png") }}"></div>
    <div class="container">
        <div class="project-top heading-space">
            <div class="section-heading mb-0">
                <h4 class="sub-heading" data-text-animation="fade-in" data-duration="1.5"><span class="left-shape"></span>Our Portfolio</h4>
                <h2 class="section-title mb-0" data-text-animation data-split="word" data-duration="1">View Our Portfolio</h2>
            </div>
            <div class="swiper-arrow" id="portfolio"> 
                <div class="swiper-nav swiper-next"><i class="fa-regular fa-arrow-left"></i></div>
                <div class="swiper-nav swiper-prev"><i class="fa-regular fa-arrow-right"></i></div>
            </div>
        </div>
        <div class="project-carousel swiper" >
            <div class="swiper-wrapper">
                @foreach($portfolios as $portfolio)
                <div class="swiper-slide">
                    <div class="project-item">
                        <div class="project-img">
                            <div class="overlay"></div>
                            <div class="overlay-2"></div>
                            <img src="{{ asset('storage/' . $portfolio->cover_picture) }}" alt="project">
                        </div>
                        <div class="project-content">
                            <h3 class="title"><a href="{{ route("ourportfolio",$portfolio->slug) }}">{{ $portfolio->title  }}</a></h3>
                            {{-- <span>Case Study, Growth</span> --}}
                            <p>{!! Str::limit($portfolio->content, 150, '...') !!}</p>
                            <a href="{{ route("ourportfolio",$portfolio->slug) }}" class="bz-primary-btn">View Portfolio</a>
                        </div>
                    </div>
                </div>
              @endforeach
            </div>
        </div>
    </div>
</section>

{{-- <section class="service-section pt-120 pb-120" data-background="assets/img/bg-img/service-bg.png">
    <div class="container">
        <div class="section-heading text-center">
            <h4 class="sub-heading" data-text-animation="fade-in" data-duration="1.5"><span class="left-shape"></span>Our Services<span class="right-shape"></span></h4>
            <h2 class="section-title" data-text-animation data-split="word" data-duration="1">Service We Provide</h2>
        </div>
        <div class="row fade-wrapper gy-lg-0 gy-4 justify-content-center">
            @foreach ($services as $service)
                 <div class="col-lg-4 col-md-6 fade-top">
                <div class="service-item">
                   
                    <div class="service-content">
                        <h3 class="title"><a href="{{ route("ourservice",$service->slug) }}">{{ $service->title }}</a></h3>
                        <p>{{ \Illuminate\Support\Str::limit($service->content, 100, '...') }}</p>
                        <a href="{{ route("ourservice",$service->slug) }}" class="bz-primary-btn">Read More <i class="fa-regular fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
            @endforeach
    
        </div>
    </div>
</section> --}}

<section class="service-section-2 pt-120 pb-120">
    <div class="container-2">
        <div class="row">
            <div class="col-lg-4 col-md-12">
                <div class="service-left-content sticky-widget fade-wrapper">
                    <div class="section-heading">
                        <h4 class="sub-heading" data-text-animation="fade-in" data-duration="1.5"><span class="left-shape"></span>oUR sERVICES</h4>
                        <h2 class="section-title" data-text-animation data-split="word" data-duration="1">Get Professional
                        <br>Service</h2>
                        <p class="fade-top">Unlock the full potential of your brand with our comprehensive digital marketing solutions</p>
                    </div>
                    <div class="service-btn-anim fade-top">
                        <a href="{{ route("services") }}" class="bz-primary-btn">View our services</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-12">
                <div class="service-items fade-wrapper">  
                     @foreach ($services as $service)
                    <div class="service-item-2 fade-top">
                       
                        <img src="{{ asset($service->image) }}" alt="icon" style="width: 15%">
                        <div class="content">
                            <h3 class="title"><a href="{{ route("ourservice",$service->slug) }}">{{ $service->title }}</a></h3>
                            <p>
                                {{ \Illuminate\Support\Str::limit($service->content, 100, '...') }}
                            </p>
                        </div>
                        
                    </div>
                 @endforeach
                   
                </div>
            </div>
        </div>
    </div>
</section>
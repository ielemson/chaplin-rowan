<section class="about-section pt-120 pb-120">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 col-md-12">
                <div class="about-img-wrap">
                    <div class="about-img img-reveal">
                        <div class="img-overlay"></div>
                        <img src="{{ asset("assets/img/images/about-img.png") }}" alt="img">
                    </div>
                    <div class="shape"></div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12">
                <div class="about-content fade-wrapper">
                    <div class="section-heading heading-2 mb-30">
                        {{-- <h4 class="sub-heading" data-text-animation="fade-in" data-duration="1.5"><span class="left-shape"></span>About Our Company</h4> --}}
                        <h2 class="section-title" data-text-animation data-split="word" data-duration="1">About Us</h2>
                        <p class="fade-top" style="text-align: justify">
                        At Palpres Media, we are your one-stop digital marketing solution dedicated to helping businesses thrive in the fast-evolving digital landscape. Based in Owerri, Imo State, Nigeria, our mission is to empower businesses through innovative, results-driven strategies that fuel growth and success. Whether you’re a startup or an established enterprise, our team is committed to delivering tailored digital marketing solutions designed to meet your unique business goals.    
                        </p>
                        <p class="fade-top" style="text-align: justify">
                            Our range of services includes Search Engine Optimization (SEO), Social Media Management, Content Marketing, Pay-Per-Click (PPC) Advertising, and Web Design & Development. Each service is designed to unlock your brand's potential by boosting visibility, driving engagement, and converting leads into loyal customers. We believe in the power of digital transformation and leverage the latest tools and techniques to keep your business ahead of the competition.
                        </p>
                    </div>
                    
                    <div class="about-btn-wrap fade-top">
                        <a href="{{ route("about") }}" class="bz-primary-btn">Read More<i class="fa-regular fa-arrow-right"></i></a>
                        {{-- <a href="tel:{{ $setting->phone }}" class="bz-transparent-btn"><i class="fa-sharp fa-solid fa-phone-volume"></i>+ 58</a> --}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
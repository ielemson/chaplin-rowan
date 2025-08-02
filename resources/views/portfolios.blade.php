@extends("layouts.app")
@section("title","Portfolio")
@section("content")
    @include("partials.page-header")
    @include("partials.page-hero",["title"=>"Our Portfolio"])

    <section class="project-section pt-120 pb-120">
        <div class="container">
            <div class="row gy-4">
                @if (count($portfolios)> 0)
                @foreach($portfolios as $portfolio)
                <div class="col-lg-4 col-md-4">
                    <div class="project-item-2">
                        <div class="overlay"></div>
                        <div class="shape"><img src="{{ asset("assets/img/shapes/project-inner-shape.png") }}" alt="{!! $portfolio->title !!}"></div>
                        <div class="project-btn">
                            <a class="venobox" href="{{ asset('storage/' . $portfolio->cover_picture) }}" data-gall="projects"><i class="fa-regular fa-magnifying-glass"></i></a>
                        </div>
                        <div class="project-img">
                            <img src="{{ asset('storage/' . $portfolio->cover_picture) }}" alt="project">
                        </div>
                        <div class="project-content">
                            <span>{!! Str::limit($portfolio->content, 150, '...') !!}</span>
                            {{-- {!! Illuminate\Support\Str::limit($latest->details, 200) !!} --}}
                            <h3 class="title"><a href="{{ route("ourportfolio",$portfolio->slug) }}">{!! $portfolio->title !!}</a></h3>
                        </div>
                    </div>
                </div>
                @endforeach
                @else
                <section class="error-section">
                 <div class="container">
                     <div class="error-content text-center">
                         <h2 class="text">Portfolio Not Found</h2>
                         <p class="mb-30">No portfolio was found. Check back later
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
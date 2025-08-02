
  <div id="minimal-bootstrap-carousel" class="home2 carousel slide carousel-fade shop-slider full_width" data-ride="carousel">
         <!-- Wrapper for slides -->
         <div class="carousel-inner" role="listbox">
             @foreach($sliders as $index => $slider)
               <div class="item slide-{{ $index + 1 }} {{ $index === 0 ? 'active' : '' }}"
               style="background-image: url('{{ asset('images/sliders/' . $slider->picture) }}'); background-size:cover; background-position:right;"
               >
               <div class="carousel-caption">
                  <div class="thm-container">
                     <div class="box valign-middle">
                        <div class="content home1-slide3 text-center">
                           <h1 data-animation="animated fadeInUp">{{$slider->header1}}</h1>
                           <p data-animation="animated fadeInDown">{{$slider->header2}}</p>
                           <a data-animation="animated fadeInUp" href="{{route("about")}}" class="header-requestbtn learn-more hvr-bounce-to-right btn-center">learn more</a> 
                           <a data-animation="animated fadeInUp" href="{{route("services")}}" class="header-requestbtn learn-more our-solution hvr-bounce-to-right btn-center">Our Solution</a>  
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            @endforeach
         </div>
         <!-- Controls --> 
         <a class="left carousel-control" href="#minimal-bootstrap-carousel" role="button" data-slide="prev"> <i class="fa fa-angle-left"></i> <span class="sr-only">Previous</span> </a> <a class="right carousel-control" href="#minimal-bootstrap-carousel" role="button" data-slide="next"> <i class="fa fa-angle-right"></i> <span class="sr-only">Next</span> </a> 
      </div>
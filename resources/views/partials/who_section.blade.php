 <section class="pad100-top-bottom">
         <div class="container">
           
            <div class="boxes-column">
               <ul>
                  <li>
                     <span class="boxes-icons">
                     <img src="{{asset("assets/images/team-icon.png")}}" alt="team-icon"> </span>
                     <div class="boxes-desc">
                        <h4>Industry Specialists</h4>
                        <p>We deploy skilled professionals with deep sector knowledge to support oil & gas, manufacturing, and infrastructure operations.</p>
                     </div>
                  </li>
                  <li>
                     <span class="boxes-icons">
                     <img src="{{asset("assets/images/delivery-time-icon.png")}}" alt="delivery-icon"> </span>
                     <div class="boxes-desc">
                        <h4>Prompt Project Execution</h4>
                        <p>Our strong project management ensures every task is delivered on time and within scope.</p>
                     </div>
                  </li>
                  <li>
                     <span class="boxes-icons">
                     <img src="{{asset("assets/images/quality-icon.png")}}" alt="quality-icon"> </span>
                     <div class="boxes-desc">
                        <h4>Certified Quality Systems</h4>
                        <p>We adhere to industry regulations and global standards to deliver reliable, high-quality outcomes.</p>
                     </div>
                  </li>
               </ul>
            </div>
            <!--=========Box Column end============-->
            <!--=========who Column Start============-->
            <div class="row">
               <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 img">
                  <span class="image_hover">
                  <img src="{{asset("images/who-we-are.jpg")}}" class="img-responsive zoom_img_effect" alt="about-image">
                  </span>
               </div>
               <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 martop30">
                  <h3>who are we?</h3>
                  <p class="fnt-17" style="text-align: justify"> {!!  \Illuminate\Support\Str::limit($setting->who_we_are, 800, '...')  !!}</p>
                  <a data-animation="animated fadeInUp" class="header-requestbtn more-infobtn hvr-bounce-to-right" href="{{route("about")}}">more info</a>
               </div>
            </div>
            <!--=========who Column end============-->
         </div>
      </section>
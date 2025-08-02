<section class="team-section pt-30 pb-30 fade-wrapper">
    <div class="bg-shape fade-right"><img src="assets/img/shapes/team-shape-1.png" alt="img"></div>
    <div class="container">
        <div class="team-top">
            <div class="section-heading white-content">
                <h4 class="sub-heading" data-text-animation="fade-in" data-duration="1.5"><span class="left-shape"></span>Our Team Members</h4>
                <h2 class="section-title" data-text-animation data-split="word" data-duration="1">Meet The Expert Team Members</h2>
            </div>
        </div>
    </div>
    <div class="team-wrap">
        <div class="row gy-lg-0 gy-4 fade-wrapper">
           @foreach ($teamMembers as $teamMember)
           <div class="col-lg-3 col-md-6 fade-top">
            <div class="team-item">
                <div class="team-thumb">
                    <img src="{{ asset('storage/' . $teamMember->picture) }}" alt="team">
                    <div class="shapes">
                        <div class="shape-1"></div>
                        <div class="shape-2"></div>
                    </div>
                </div>
                <div class="team-content-wrap">
                    <div class="team-content">
                        <h3 class="title"><a href="javascript:;">{{ $teamMember->name }}</a></h3>
                        <span>{{ $teamMember->portfolio }}</span>
                    </div>
                    <div class="team-social">
                        <div class="expand">
                            <i class="fa-solid fa-share-nodes"></i>
                        </div>
                     
                    </div>
                </div>
            </div>
        </div>
           @endforeach
        </div>
    </div>
</section>
<!-- ./ team-section -->


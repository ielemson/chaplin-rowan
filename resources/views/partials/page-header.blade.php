@php
$setting = \App\Models\Setting::find(1);
@endphp
<header class="header header-3 header-4 sticky-active">
    <div class="top-bar bar-2">
        <div class="container">
            <div class="top-bar-inner">
              
            </div>
        </div>
    </div>
    <div class="primary-header">
        <div class="container">
            <div class="primary-header-inner">
                <div class="header-logo">
                    <a href="{{ url("/") }}">
                        <img src="{{ asset("images/settings/$setting->website_logo_light") }}" alt="logo" style="width:50%">
                    </a>
                </div>
                <div class="inner-left">
                    <div class="header-menu-wrap">
                        <div class="mobile-menu-items">
                            <ul>
                                <li class="menu-item-has-children active">
                                    <a href="{{ url("/") }}">Home</a>
                                   
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="{{ route("about") }}">About Us</a>
                                   
                                </li>
                                <li class="">
                                    <a href="{{ route("services") }}">Services</a>
                                   
                                </li>
                                <li class="">
                                    <a href="{{ route("ourblogs") }}">Blog</a>
                                  
                                </li>
                                {{-- <li class="">
                                    <a href="{{ route("ourportfolios")}}">Portfolio</a>
                                  
                                </li> --}}
                                <li><a href="{{ route("contact") }}">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /.header-menu-wrap -->
                </div>
                <div class="header-right-wrap">
                    <div class="header-right">
                        <a href="{{ route("services") }}" class="bz-primary-btn">View All Services</a>
                        <div class="sidebar-icon-2">
                            <button class="sidebar-trigger open">
                                <span></span>
                                <span></span>
                                <span></span>
                            </button>
                        </div>
                    </div>
                    <!-- /.header-right -->
                </div>
            </div>
            <!-- /.primary-header-inner -->
        </div>
    </div>
</header>

@include("partials.side-area")
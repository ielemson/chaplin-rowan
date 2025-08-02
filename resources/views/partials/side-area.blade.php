@php
$setting = \App\Models\Setting::find(1);
@endphp

<div id="sidebar-area" class="sidebar-area">
    <button class="sidebar-trigger close">
        <svg
            class="sidebar-close"
            xmlns="http://www.w3.org/2000/svg"
            xmlns:xlink="http://www.w3.org/1999/xlink"
            x="0px"
            y="0px"
            width="16px"
            height="12.7px"
            viewBox="0 0 16 12.7"
            style="enable-background: new 0 0 16 12.7"
            xml:space="preserve"
        >
            <g>
                <rect
                    x="0"
                    y="5.4"
                    transform="matrix(0.7071 -0.7071 0.7071 0.7071 -2.1569 7.5208)"
                    width="16"
                    height="2"
                ></rect>
                <rect
                    x="0"
                    y="5.4"
                    transform="matrix(0.7071 0.7071 -0.7071 0.7071 6.8431 -3.7929)"
                    width="16"
                    height="2"
                ></rect>
            </g>
        </svg>
    </button>
    <div class="side-menu-content">
        <div class="side-menu-logo">
            {{-- <a href="{{ url("/") }}"><img src="assets/img/logo/logo-2.png" alt="logo"></a> --}}
        </div>
        <div class="side-menu-wrap"></div>
        <div class="side-menu-about">
            <div class="side-menu-header">
                <h3>About Us</h3>
            </div>
            <p>
                {!! Illuminate\Support\Str::limit($setting->about, 156) !!}
            </p>
            <a href="{{ route("about") }}" class="bz-primary-btn">Read More</a>
        </div>
        <div class="side-menu-contact">
            <div class="side-menu-header">
                <h3>Contact Us</h3>
            </div>
            <ul class="side-menu-list">
                <li>
                    <i class="fas fa-map-marker-alt"></i>
                    <p>
                        {{ $setting->address }}
                    </p>
                </li>
                <li>
                    <i class="fas fa-phone"></i>
                    <a href="tel:{{ $setting->phone }}">{{ $setting->phone }}</a>
                </li>
                <li>
                    <i class="fas fa-envelope-open-text"></i>
                    <a href="mailto:{{ $setting->email }}">{{ $setting->email }}</a>
                </li>
            </ul>
        </div>
        <ul class="side-menu-social">
            <li class="facebook"><a href="{{ $setting->facebook }}"><i class="fab fa-facebook-f"></i></a></li>
            <li class="instagram"><a href="{{ $setting->instagram}}"><i class="fab fa-instagram"></i></a></li>
            <li class="behance"><a href="{{ $setting->twitter }}"><i class="fab fa-twitter"></i></a></li>
        </ul>
    </div>
</div>
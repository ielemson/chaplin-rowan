@extends("layouts.app")
@php
$setting = \App\Models\Setting::find(1);
@endphp
@section('title', 'Contact Us')
@section("content")
    @include("partials.page-header")
    @include("partials.page-hero",["title"=>"Contact Us"])

    <section class="contact-section pt-130 pb-130">
        <div class="container">
            <div class="row gy-lg-0 gy-5">
                <div class="col-lg-7">
                    <div class="blog-contact-form">
                        <h2 class="title mb-0">Leave A Reply</h2>
                        <p class="mb-30 mt-10">Fill-up The Form and Message us of your amazing question</p>
                        <div class="request-form">
                            @csrf
                            <form action="#" method="post" id="contactForm" class="form-horizontal">
                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <div class="form-item">
                                            <input type="text" id="fullname" name="fullname" class="form-control" placeholder="Your Name">
                                            {{-- <div class="icon"><i class="fa-regular fa-user"></i></div> --}}
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-item">
                                            <input type="email" id="email" name="email" class="form-control" placeholder="Your Email">
                                            {{-- <div class="icon"><i class="fa-sharp fa-regular fa-envelope"></i></div> --}}
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <div class="form-item">
                                            <input type="etextmail" id="subject" name="subject" class="form-control" placeholder="Your Subject">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <div class="form-item message-item">
                                            <textarea id="message" name="message" cols="30" rows="5" class="form-control address" placeholder="Message"></textarea>
                                            {{-- <div class="icon"><i class="fa-light fa-messages"></i></div> --}}
                                        </div>
                                    </div>
                                </div>
                                <div class="submit-btn">
                                    <button id="submit" class="bz-primary-btn" type="submit">Submit Message</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-12">
                    <div class="contact-content">
                        <div class="contact-top">
                            <h3 class="title">Office Information</h3>
                            <p> We are dedicated to providing exceptional services and support to all our clients.</p>
                        </div>
                        <div class="contact-list">
                            <div class="list-item">
                                <div class="icon">
                                    <i class="fa-sharp fa-solid fa-phone"></i>
                                </div>
                                <div class="content">
                                    <h4 class="title">Phone Number & Email</h4>
                                    <span><a href="tel:+{{ $setting->phone }}">{{ $setting->phone }}</a></span>
                                    <span><a href="mailto:{{ $setting->email }}">{{ $setting->email }}</a></span>
                                </div>
                            </div>
                            <div class="list-item">
                                <div class="icon">
                                    <i class="fa-sharp fa-solid fa-location-dot"></i>
                                </div>
                                <div class="content">
                                    <h4 class="title">Our Office Address</h4>
                                    <p>{{ $setting->address }}</p>
                                </div>
                            </div>
                            <div class="list-item">
                                <div class="icon">
                                    <i class="fa-sharp fa-solid fa-clock"></i>
                                </div>
                                <div class="content">
                                    <h4 class="title">Official Work Time</h4>
                                    <span>Monday - Friday: 09:00 - 20:00</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    @section("javascripts")
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>


    <script>
        $(document).ready(function() {
            // jQuery Validation
            $('#contactForm').validate({
                rules: {
                    fullname: {
                        required: true,
                        minlength: 2
                    },
                    email: {
                        required: true,
                        email: true
                    },
                    subject: {
                        required: true,
                        minlength: 5
                    }
                },
                messages: {
                    fullname: {
                        required: "Please enter your name",
                        minlength: "Your name must be at least 2 characters long"
                    },
                    email: {
                        required: "Please enter your email",
                        email: "Please enter a valid email address"
                    },
                    subject: {
                        required: "Please enter a subject",
                        minlength: "The subject must be at least 5 characters long"
                    }
                },
                submitHandler: function(form) {
                    // If validation passes, submit the form via AJAX
                    $('.loading').show(); // Show loading animation

                    let formData = {
                        name: $('#fullname').val(),
                        email: $('#email').val(),
                        subject: $('#subject').val(),
                        _token: $('input[name="_token"]').val() // CSRF token
                    };

                    $.ajax({
                        url: '{{ route("contact.submit") }}', // The route to handle form submission
                        type: 'POST',
                        data: formData,
                        success: function(response) {
                            $('.loading').hide(); // Hide loading animation
                            alert(response.message); // Show success message
                        },
                        error: function(xhr) {
                            $('.loading').hide(); // Hide loading animation
                            alert('Something went wrong. Please try again.');
                        }
                    });
                }
            });
        });
    </script>
  <style>
    .loading {
        display: none;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        font-size: 18px;
        color: #555;
    }

    .error {
        color: red;
        font-size: 0.9em;
    }
</style>
    @endsection
@endsection
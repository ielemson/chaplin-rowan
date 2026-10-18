@extends('layouts.app', ['title' => 'Contact Us'])

@php
    $setting = \App\Models\Setting::find(1);
@endphp

@section('home_slider')
    @include('partials.page_bannerr', ['header' => 'Contact Us'])
@endsection

@section('content')
    <section class="pad100-top-bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 contact-info-column text-center">
                    <img src="{{ asset('assets/images/contact-address-icon.png') }}" alt="Address">
                    <h4>Location</h4>
                    <p class="fnt-17">{{ optional($setting)->address }}</p>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 contact-info-column text-center">
                    <img src="{{ asset('assets/images/contact-phn-icon.png') }}" alt="Phone">
                    <h4>Phone</h4>
                    <p class="fnt-17">{{ optional($setting)->phone }}</p>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 contact-info-column text-center">
                    <img src="{{ asset('assets/images/contact-msg-icon.png') }}" alt="Email">
                    <h4>Email</h4>
                    <p class="fnt-17">{{ optional($setting)->email }}</p>
                </div>
            </div>

            <div class="row">
                <div class="col-12 text-center">
                    <h3 class="mar-btm30">Leave us your info</h3>
                    <p class="fnt-18">And we will get back to you.</p>
                </div>

                <div class="col-12">
                    <div class="contact-form">
                        <form id="contactPageForm" action="{{ route('contact.submit') }}" method="POST"
                            data-parsley-validate>
                            @csrf

                            <div class="row contact-form request-form">
                                <div class="col-lg-6 form-field">
                                    <input name="name" type="text" class="form-input" placeholder="Full Name*"
                                        aria-label="Full Name" autocomplete="name" maxlength="255" required>
                                </div>

                                <div class="col-lg-6 form-field">
                                    <input name="email" type="email" class="form-input" placeholder="Email*"
                                        aria-label="Email" autocomplete="email" maxlength="255" data-parsley-type="email"
                                        required>
                                </div>

                                <div class="col-lg-6 form-field">
                                    <input name="phone" type="tel" class="form-input" placeholder="Phone*"
                                        aria-label="Phone" autocomplete="tel" maxlength="20" required>
                                </div>

                                <div class="col-lg-6 form-field">
                                    <input name="subject" type="text" class="form-input" placeholder="Subject*"
                                        aria-label="Subject" maxlength="255" required>
                                </div>

                                <div class="col-lg-12 form-field">
                                    <textarea name="message" class="form-input" rows="5" placeholder="Comment*" aria-label="Comment" maxlength="10000"
                                        required></textarea>
                                </div>

                                <div class="col-lg-12 form-field mb-3">
                                    <div id="contactPageTurnstile"></div>

                                    <p id="contactPageVerificationMessage" class="text-danger" role="status"
                                        aria-live="polite"></p>
                                </div>

                                <div class="col-md-12 form-field request_btn">
                                    <button type="submit" class="form-submit-btn" data-contact-submit>
                                        <span class="spinner-border spinner-border-sm text-light me-2 d-none" role="status"
                                            aria-hidden="true"></span>

                                        <span class="btn-text">Submit Now</span>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    @include('partials.google_map')
@endsection

@push('scripts')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/parsleyjs"></script>

    <script>
        window.contactPageWidgetId = null;

        window.initContactPageTurnstile = function() {
            window.contactPageWidgetId = window.turnstile.render(
                '#contactPageTurnstile', {
                    sitekey: @json(config('services.turnstile.site_key')),
                    action: 'contact',
                    theme: 'auto',

                    callback: function() {
                        document.getElementById(
                            'contactPageVerificationMessage'
                        ).textContent = '';
                    },

                    'expired-callback': function() {
                        document.getElementById(
                                'contactPageVerificationMessage'
                            ).textContent =
                            'Security verification expired. Please verify again.';
                    },

                    'error-callback': function(code) {
                        document.getElementById(
                                'contactPageVerificationMessage'
                            ).textContent =
                            'Security verification could not complete. Please refresh and try again.';

                        console.error('Contact Turnstile error:', code);
                    }
                }
            );
        };

        $(function() {
            const $form = $('#contactPageForm');
            const parsley = $form.parsley();
            const $button = $form.find('[data-contact-submit]');
            const $spinner = $button.find('.spinner-border');
            const $text = $button.find('.btn-text');

            let submitting = false;

            function setLoading(loading) {
                submitting = loading;

                $button.prop('disabled', loading);
                $spinner.toggleClass('d-none', !loading);
                $text.toggleClass('d-none', loading);
                $form.attr('aria-busy', loading ? 'true' : 'false');
            }

            $form.on('submit', function(event) {
                event.preventDefault();

                if (submitting || !parsley.validate()) return;

                const token = $form
                    .find('[name="cf-turnstile-response"]')
                    .val();

                if (!token) {
                    Swal.fire({
                        icon: 'warning',
                        title: 'Security Verification',
                        text: 'Please complete the security verification.'
                    });

                    return;
                }

                setLoading(true);

                $.ajax({
                    url: $form.attr('action'),
                    method: 'POST',
                    data: $form.serialize(),
                    dataType: 'json',

                    headers: {
                        Accept: 'application/json'
                    },

                    success: function(response) {
                        $form[0].reset();
                        parsley.reset();

                        Swal.fire({
                            icon: 'success',
                            title: 'Message Sent!',
                            text: response.message ||
                                'Thank you for contacting us!'
                        });
                    },

                    error: function(xhr) {
                        const response = xhr.responseJSON || {};

                        let title = 'Unable to Send';
                        let message =
                            'Unable to send your message. Please try again.';

                        if (xhr.status === 422) {
                            title = 'Please Check Your Details';

                            const messages = Object.values(
                                response.errors || {}
                            ).flat();

                            message = messages.length ?
                                messages.join('\n') :
                                'Please check the form and try again.';
                        } else if (xhr.status === 429) {
                            title = 'Too Many Attempts';
                            message =
                                'Please wait a minute before trying again.';
                        } else if (xhr.status === 419) {
                            title = 'Session Expired';
                            message =
                                'Please refresh this page and submit again.';
                        } else if (xhr.status === 0) {
                            title = 'Connection Error';
                            message =
                                'Please check your internet connection.';
                        } else if (xhr.status === 503) {
                            message = response.message ||
                                'The service is temporarily unavailable. Please try again later.';
                        }

                        Swal.fire({
                            icon: 'error',
                            title: title,
                            text: message
                        });
                    },

                    complete: function() {
                        if (
                            window.turnstile &&
                            window.contactPageWidgetId !== null
                        ) {
                            window.turnstile.reset(
                                window.contactPageWidgetId
                            );
                        }

                        setLoading(false);
                    }
                });
            });
        });
    </script>

    <script src="https://challenges.cloudflare.com/turnstile/v0/api.js?onload=initContactPageTurnstile&render=explicit"
        async defer></script>
@endpush

@push('styles')
    <style>
        #contactPageForm .parsley-errors-list {
            margin: 6px 0 0;
            padding: 0;
            color: #dc3545;
            font-size: 14px;
            list-style: none;
        }

        #contactPageForm .parsley-error {
            border-color: #dc3545;
        }

        #contactPageForm [data-contact-submit]:disabled {
            opacity: 0.7;
            cursor: not-allowed;
        }

        .swal2-html-container {
            white-space: pre-line;
        }
    </style>
@endpush

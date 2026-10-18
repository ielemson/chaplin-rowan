<section class=" get_in_02">
    <div class="container">
        <h3 class="marbtm30 text-center">GET IN TOUCH</h3>
        <p class="fnt-18 marbtm50 text-center">Have a project or inquiry? Our team is ready to provide expert support and
            tailored solutions. Reach out today to start a conversation that drives results.</p>
        <div class="row">
            <!--=========Request Left Start============-->
            <div class="col-md-12 col-sm-12 col-xs-12 faq-mobile-margin">
                <div class="row">
                    <div class="contact-form request-form">
                        <form id="contactForm" data-parsley-validate>
                            @csrf

                            <div class="row contact-form request-form">
                                <div class="col-lg-6 form-field">
                                    <input name="name" type="text" class="form-input" placeholder="Full Name*"
                                        required>
                                </div>

                                <div class="col-lg-6 form-field">
                                    <input name="email" type="email" class="form-input" placeholder="Email*"
                                        required data-parsley-type="email">
                                </div>

                                <div class="col-lg-6 form-field">
                                    <input name="phone" type="text" class="form-input" placeholder="Phone*"
                                        required>
                                </div>

                                <div class="col-lg-6 form-field">
                                    <input name="subject" type="text" class="form-input" placeholder="Subject*"
                                        required>
                                </div>

                                <div class="col-lg-12 form-field">
                                    <textarea name="message" class="form-input" rows="3" placeholder="Comment*" required></textarea>
                                </div>

                                {{-- Cloudflare Turnstile --}}
                                <div class="col-lg-12 form-field mb-3">
                                    <div class="cf-turnstile" data-sitekey="{{ config('services.turnstile.site_key') }}"
                                        data-action="contact" data-theme="auto"></div>
                                </div>

                                <div class="col-md-12 form-field request_btn">
                                    <button type="submit" id="submitBtn" class="form-submit-btn">
                                        <span class="spinner-border spinner-border-sm text-light me-2 d-none"
                                            role="status" aria-hidden="true"></span>

                                        <span class="btn-text">Submit Now</span>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

@push('scripts')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/parsleyjs"></script>
    <script src="https://challenges.cloudflare.com/turnstile/v0/api.js" async defer></script>

    <script>
        $(function() {
            const $form = $('#contactForm');

            if (!$form.length) return;

            const parsley = $form.parsley();
            const $btn = $form.find('#submitBtn');
            const $spinner = $btn.find('.spinner-border');
            const $text = $btn.find('.btn-text');

            let submitting = false;

            function setLoading(loading) {
                submitting = loading;

                $btn.prop('disabled', loading);
                $spinner.toggleClass('d-none', !loading);
                $text.toggleClass('d-none', loading);
                $form.attr('aria-busy', loading ? 'true' : 'false');
            }

            function resetTurnstile() {
                if (window.turnstile) {
                    window.turnstile.reset();
                }
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
                        text: 'Please complete the security verification before submitting.'
                    });

                    return;
                }

                setLoading(true);

                $.ajax({
                    url: @json(route('contact.submit')),
                    method: 'POST',
                    data: $form.serialize(),
                    dataType: 'json',
                    headers: {
                        'Accept': 'application/json'
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
                        let message = response.message ||
                            'Something went wrong. Please try again.';

                        if (xhr.status === 422) {
                            title = 'Please Check Your Details';

                            const messages = Object.values(
                                response.errors || {}
                            ).flat();

                            if (messages.length) {
                                message = messages.join('\n');
                            }
                        } else if (xhr.status === 429) {
                            title = 'Too Many Attempts';
                            message = 'Please wait a minute before trying again.';
                        } else if (xhr.status === 419) {
                            title = 'Session Expired';
                            message = 'Please refresh this page and submit again.';
                        } else if (xhr.status === 0) {
                            title = 'Connection Error';
                            message = 'Please check your internet connection and try again.';
                        } else if (xhr.status >= 500) {
                            message = xhr.status === 503 ?
                                (response.message ||
                                    'The service is temporarily unavailable. Please try again later.'
                                    ) :
                                'Unable to send your message right now. Please try again later.';
                        }

                        Swal.fire({
                            icon: 'error',
                            title: title,
                            text: message
                        });
                    },

                    complete: function() {
                        setLoading(false);
                        resetTurnstile();
                    }
                });
            });
        });
    </script>
@endpush

@push('styles')
    <style>
        #contactForm .parsley-errors-list {
            margin: 6px 0 0;
            padding: 0;
            color: #dc3545;
            font-size: 14px;
            font-weight: 400;
            list-style: none;
        }

        #contactForm .parsley-error {
            border-color: #dc3545;
        }

        #submitBtn:disabled {
            opacity: 0.7;
            cursor: not-allowed;
        }

        .swal2-html-container {
            white-space: pre-line;
        }
    </style>
@endpush

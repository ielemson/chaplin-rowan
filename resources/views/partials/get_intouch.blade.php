<section class="pad95-100-top-bottom get_in_02">
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

                                <!-- CAPTCHA -->
                                <div class="col-md-6 form-field">
                                    <input type="text" name="captcha" class="form-input" placeholder="Enter CAPTCHA*"
                                        required>
                                </div>
                                <div class="col-md-6 form-field d-flex align-items-center">
                                    <span id="captcha-img">{!! captcha_img() !!}</span>
                                    <button type="button" class="btn btn-sm btn-secondary ms-2"
                                        id="reload">↻</button>
                                </div>

                                <div class="col-md-12 form-field request_btn">
                                    {{-- <button type="submit" class="form-submit-btn" id="btnSpinner">
                                            <span class="spinner-border spinner-border-sm d-none" role="status" aria-hidden="true"></span>
                                        Submit Now
                                    </button> --}}
                                    <button type="submit" id="submitBtn" class="form-submit-btn">
                                    <span class="spinner-border spinner-border-sm text-light me-2 d-none" role="status" aria-hidden="true"></span>
                                    <span class="btn-text">Submit Now</span>
                                    </button>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
            <!--=========Request Left end============-->
            <!--=========Request Right Start============-->
            <!--=========Request Left end============-->
        </div>
    </div>
</section>



@push('scripts')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/parsleyjs"></script>

    <script>
     $('#reload').click(function () {
    $.get('/captcha-refresh', function (data) {
        $('#captcha-img').html(data.captcha);
    });
});

$('#contactForm').on('submit', function (e) {
    e.preventDefault();

    if (!$(this).parsley().isValid()) return;

    const $btn = $('#submitBtn');
    const $spinner = $btn.find('.spinner-border');
    const $text = $btn.find('.btn-text');

    // Show spinner, hide text, and disable button
    $btn.prop('disabled', true);
    $spinner.removeClass('d-none');
    $text.addClass('d-none');

    $.ajax({
        url: "{{ route('contact.submit') }}",
        method: "POST",
        data: $(this).serialize(),
        success: function (response) {
            Swal.fire('Success!', response.message, 'success');
            $('#contactForm')[0].reset();
            $('#reload').click();
        },
        error: function (xhr) {
            if (xhr.status === 422) {
                const errors = xhr.responseJSON.errors;
                let message = '';

                for (let field in errors) {
                    message += `${errors[field].join('<br>')}<br>`;
                }

                Swal.fire({
                    icon: 'error',
                    title: 'Validation Error',
                    html: message
                });
            } else {
                Swal.fire('Error', 'Something went wrong.', 'error');
            }
        },
        complete: function () {
            $btn.prop('disabled', false);
            $spinner.addClass('d-none');
            $text.removeClass('d-none');
        }
    });
});

    </script>
@endpush

@push('styles')
    <style>
        .parsley-required {
            color: red;
            font-weight: 400;
            list-style-type: none;
        }
    </style>
@endpush

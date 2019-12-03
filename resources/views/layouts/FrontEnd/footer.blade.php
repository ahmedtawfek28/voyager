<footer id="footer" @if(app()->getLocale()=="ar") style="text-align: right;direction: rtl;" @endif>
    <div class="container">
        <div class="footer-ribbon">
            <span>Get in Touch</span>
        </div>
        <div class="row py-5 my-4">
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
                <h5 class="text-3 mb-3">NEWSLETTER</h5>
                <p class="pr-1">Keep up on our always evolving product features and technology. Enter your e-mail
                    address and subscribe to our newsletter.</p>
                <div class="alert alert-success d-none" id="newsletterSuccess">
                    <strong>Success!</strong> You've been added to our email list.
                </div>
                <div class="alert alert-danger d-none" id="newsletterError"></div>
                <form id="newsletterForm" action="php/newsletter-subscribe.php" method="POST"
                      class="mr-4 mb-3 mb-md-0">
                    <div class="input-group input-group-rounded" style="direction: ltr;">
                        <input class="form-control form-control-sm bg-light" placeholder="Email Address"
                               name="newsletterEmail" id="newsletterEmail" type="text">
                        <span class="input-group-append">
										<button class="btn btn-light text-color-dark" type="submit"><strong>GO!</strong></button>
									</span>
                    </div>
                </form>
            </div>
            <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
                <h5 class="text-3 mb-3">LATEST TWEETS</h5>
                <div id="tweet" class="twitter" data-plugin-tweets
                     data-plugin-options="{'username': 'oklerthemes', 'count': 2}">
                    <p>Please wait...</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 mb-4 mb-md-0">
                <div class="contact-details">
                    <h5 class="text-3 mb-3">{{ trans('frontend.contact_us') }}</h5>
                    <ul class="list list-icons list-icons-lg" style="direction: ltr;">
                        @if(app()->getLocale()=="ar")
                            <li class="mb-1">
                                <p class="m-0">
                                    {{ setting('general.address_ar') }} <i
                                        class="fas fa-map-marker-alt text-color-primary"></i>
                                    @else
                            <li class="mb-1">    <i class="fas fa-map-marker-alt text-color-primary"></i>
                                <p class="m-0">
                                    {{ setting('general.address_en') }}
                                    @endif </p></li>
                            <li class="mb-1">
                                @if(app()->getLocale()=="en")
                                <i class="fab fa-whatsapp text-color-primary"></i>
                                @endif
                                <p class="m-0" dir="ltr">{{ setting('general.phone') }}@if(app()->getLocale()=="ar")
                                        <i class="fab fa-whatsapp text-color-primary"></i>
                                    @endif</p></li>

                            @if(app()->getLocale()=="ar")
                                <li class="mb-1">
                                    <p class="m-0"><a href="mailto:mail@example.com"> mail@example.com </a> <i class="far fa-envelope text-color-primary"> </i> </p></li>
                            @else
                                <li class="mb-1"><i class="far fa-envelope text-color-primary"></i>
                                    <p class="m-0"><a href="mailto:mail@example.com">mail@example.com</a></p></li>
                            @endif



                    </ul>
                </div>
            </div>
            <div class="col-md-6 col-lg-2">
                <h5 class="text-3 mb-3">FOLLOW US</h5>
                <ul class="social-icons">
                    <li class="social-icons-facebook"><a href="http://www.facebook.com/" target="_blank"
                                                         title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
                    <li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank"
                                                        title="Twitter"><i class="fab fa-twitter"></i></a></li>
                    <li class="social-icons-linkedin"><a href="http://www.linkedin.com/" target="_blank"
                                                         title="Linkedin"><i class="fab fa-linkedin-in"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container py-2">
            <div class="row py-4">
                <div
                    class="col-lg-1 d-flex align-items-center justify-content-center justify-content-lg-start mb-2 mb-lg-0">
                    <a href="index.html" class="logo pr-0 pr-lg-3">
                        <img alt="Porto Website Template" src="{{ asset('FrontEnd/img/logo-footer.png') }}"
                             class="opacity-5" height="33">
                    </a>
                </div>
                <div
                    class="col-lg-7 d-flex align-items-center justify-content-center justify-content-lg-start mb-4 mb-lg-0">
                    <p>© Copyright 2019. All Rights Reserved.</p>
                </div>
                <div class="col-lg-4 d-flex align-items-center justify-content-center justify-content-lg-end">
                    <nav id="sub-menu">
                        <ul>
                            <li><i class="fas fa-angle-right"></i><a href="page-faq.html"
                                                                     class="ml-1 text-decoration-none"> FAQ's</a>
                            </li>
                            <li><i class="fas fa-angle-right"></i><a href="sitemap.html"
                                                                     class="ml-1 text-decoration-none"> Sitemap</a>
                            </li>
                            <li><i class="fas fa-angle-right"></i><a href="contact-us.html"
                                                                     class="ml-1 text-decoration-none"> Contact
                                    Us</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</footer>

<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
@include('layouts.FrontEnd.head')
<body>

<div class="body">
    @include('layouts.FrontEnd.header')
   

    <div role="main" class="main">
            @include('layouts.FrontEnd.slider')
       

        <div class="container">

            <div class="row text-center pt-3">
                <div class="col-md-10 mx-md-auto">
                    <h1 class="word-rotator slide font-weight-bold text-8 mb-3 appear-animation"
                        data-appear-animation="fadeInUpShorter">
                        <span>Porto is </span>
                        <span class="word-rotator-words bg-dark">
									<b class="is-visible">incredibly</b>
									<b>especially</b>
									<b>extremely</b>
								</span>
                        <span> beautiful and fully responsive.</span>
                    </h1>
                    <p class="lead appear-animation" data-appear-animation="fadeInUpShorter"
                       data-appear-animation-delay="300">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elementum, nulla vel pellentesque
                        consequat, ante nulla hendrerit arcu, ac tincidunt mauris lacus sed leo.
                    </p>
                </div>
            </div>

        </div>

        <div class="appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="200">
            <div class="home-concept mt-5">
                <div class="container">

                    <div class="row text-center">
                        <span class="sun"></span>
                        <span class="cloud"></span>
                        <div class="col-lg-2 ml-lg-auto">
                            <div class="process-image">
                                <img src="{{ asset('FrontEnd/img/home/home-concept-item-1.png') }}" alt=""/>
                                <strong>Strategy</strong>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="process-image process-image-on-middle">
                                <img src="{{ asset('FrontEnd/img/home/home-concept-item-2.png') }}" alt=""/>
                                <strong>Planning</strong>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="process-image">
                                <img src="{{ asset('FrontEnd/img/home/home-concept-item-3.png') }}" alt=""/>
                                <strong>Build</strong>
                            </div>
                        </div>
                        <div class="col-lg-4 ml-lg-auto">
                            <div class="project-image">
                                <div id="fcSlideshow" class="fc-slideshow">
                                    <ul class="fc-slides">
                                        <li><a href="portfolio-single-wide-slider.html"><img class="img-responsive"
                                                                                             src="{{ asset('FrontEnd/img/projects/project-home-1.jpg') }}"
                                                                                             alt=""/></a></li>
                                        <li><a href="portfolio-single-wide-slider.html"><img class="img-responsive"
                                                                                             src="{{ asset('FrontEnd/img/projects/project-home-2.jpg') }}"
                                                                                             alt=""/></a></li>
                                        <li><a href="portfolio-single-wide-slider.html"><img class="img-responsive"
                                                                                             src="{{ asset('FrontEnd/img/projects/project-home-3.jpg') }}"
                                                                                             alt=""/></a></li>
                                    </ul>
                                </div>
                                <strong class="our-work">Our Work</strong>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="container mb-5 pb-4">

            <div class="row">
                <div class="col mb-4">
                    <hr class="my-5">
                </div>
            </div>

            <div class="row pb-3">
                <div class="col-lg-12">
                    <h2 class="font-weight-normal text-7">Our <strong class="font-weight-extra-bold">Features</strong>
                    </h2>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="feature-box feature-box-style-2">
                                <div class="feature-box-icon">
                                    <i class="icons icon-layers text-color-primary"></i>
                                </div>
                                <div class="feature-box-info">
                                    <h4 class="font-weight-bold text-4 mb-0">Sliders_1</h4>
                                    <br>• Infrastructure for information technology evaluation.

                                    <br>• Design and implementation of wired and wireless networks.

                                    <br>• Protection and Firewall network security systems.

                                    <br>• Design and implementation of information centers Data Center.

                                    <br>• Internal PABX buildings, offices and businesses.

                                    <br>• Software design (sales - purchases – Café & Restaurant - accounts medical
                                    programs).

                                    <br>• Network management services.

                                    <br>• Internet service by satellite.
                                </div>
                            </div>

                        </div>
                        <div class="col-sm-4">
                            <div class="feature-box feature-box-style-2">
                                <div class="feature-box-icon">
                                    <i class="icons icon-layers text-color-primary"></i>
                                </div>
                                <div class="feature-box-info">
                                    <h4 class="font-weight-bold text-4 mb-0">Sliders_2</h4>
                                    <br>• Infrastructure for information technology evaluation.

                                    <br>• Design and implementation of wired and wireless networks.

                                    <br>• Protection and Firewall network security systems.

                                    <br>• Design and implementation of information centers Data Center.

                                    <br>• Internal PABX buildings, offices and businesses.

                                    <br>• Software design (sales - purchases – Café & Restaurant - accounts medical
                                    programs).

                                    <br>• Network management services.

                                    <br>• Internet service by satellite.
                                </div>
                            </div>

                        </div>
                        <div class="col-sm-4">
                            <div class="feature-box feature-box-style-2">
                                <div class="feature-box-icon">
                                    <i class="icons icon-layers text-color-primary"></i>
                                </div>
                                <div class="feature-box-info">
                                    <h4 class="font-weight-bold text-4 mb-0">Sliders_3</h4>
                                    <br>• Infrastructure for information technology evaluation.

                                    <br>• Design and implementation of wired and wireless networks.

                                    <br>• Protection and Firewall network security systems.

                                    <br>• Design and implementation of information centers Data Center.

                                    <br>• Internal PABX buildings, offices and businesses.

                                    <br>• Software design (sales - purchases – Café & Restaurant - accounts medical
                                    programs).

                                    <br>• Network management services.

                                    <br>• Internet service by satellite.
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <div class="row pb-3"style="text-align: right;direction: rtl;">
                <div class="col-lg-12">
                    <h2 class="font-weight-normal text-7">Our <strong class="font-weight-extra-bold">Features</strong>
                    </h2>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="feature-box feature-box-style-2">
                                <div class="feature-box-icon">
                                    <i class="icons icon-layers text-color-primary"></i>
                                </div>
                                <div class="feature-box-info">
                                    <h4 class="font-weight-bold text-4 mb-0">Sliders_1</h4>
                                    <br>• Infrastructure for information technology evaluation.

                                    <br>• Design and implementation of wired and wireless networks.

                                    <br>• Protection and Firewall network security systems.

                                    <br>• Design and implementation of information centers Data Center.

                                    <br>• Internal PABX buildings, offices and businesses.

                                    <br>• Software design (sales - purchases – Café & Restaurant - accounts medical
                                    programs).

                                    <br>• Network management services.

                                    <br>• Internet service by satellite.
                                </div>
                            </div>

                        </div>
                        <div class="col-sm-4">
                            <div class="feature-box feature-box-style-2">
                                <div class="feature-box-icon">
                                    <i class="icons icon-layers text-color-primary"></i>
                                </div>
                                <div class="feature-box-info">
                                    <h4 class="font-weight-bold text-4 mb-0">Sliders_2</h4>
                                    <br>• Infrastructure for information technology evaluation.

                                    <br>• Design and implementation of wired and wireless networks.

                                    <br>• Protection and Firewall network security systems.

                                    <br>• Design and implementation of information centers Data Center.

                                    <br>• Internal PABX buildings, offices and businesses.

                                    <br>• Software design (sales - purchases – Café & Restaurant - accounts medical
                                    programs).

                                    <br>• Network management services.

                                    <br>• Internet service by satellite.
                                </div>
                            </div>

                        </div>
                        <div class="col-sm-4">
                            <div class="feature-box feature-box-style-2">
                                <div class="feature-box-icon">
                                    <i class="icons icon-layers text-color-primary"></i>
                                </div>
                                <div class="feature-box-info">
                                    <h4 class="font-weight-bold text-4 mb-0">Sliders_3</h4>
                                    <br>• Infrastructure for information technology evaluation.

                                    <br>• Design and implementation of wired and wireless networks.

                                    <br>• Protection and Firewall network security systems.

                                    <br>• Design and implementation of information centers Data Center.

                                    <br>• Internal PABX buildings, offices and businesses.

                                    <br>• Software design (sales - purchases – Café & Restaurant - accounts medical
                                    programs).

                                    <br>• Network management services.

                                    <br>• Internet service by satellite.
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <hr class="solid my-5">

            <div class="row text-center pt-4">
                <div class="col">
                    <h2 class="word-rotator slide font-weight-bold text-8 mb-2">
                        <span>We're not the only ones </span>
                        <span class="word-rotator-words bg-primary">
									<b class="is-visible">excited</b>
									<b>happy</b>
								</span>
                        <span> about Porto Template...</span>
                    </h2>
                    <h4 class="text-primary lead tall text-4">30,000 CUSTOMERS IN 100 COUNTRIES USE PORTO TEMPLATE. MEET
                        OUR CUSTOMERS.</h4>
                </div>
            </div>

            <div class="row text-center mt-5">
                <div class="owl-carousel owl-theme carousel-center-active-item"
                     data-plugin-options="{'responsive': {'0': {'items': 1}, '476': {'items': 1}, '768': {'items': 5}, '992': {'items': 7}, '1200': {'items': 7}}, 'autoplay': true, 'autoplayTimeout': 3000, 'dots': false}">
                    <div>
                        <img class="img-fluid" src="{{ asset('FrontEnd/img/logos/logo-1.png') }}" alt="">
                    </div>
                    <div>
                        <img class="img-fluid" src="{{ asset('FrontEnd/img/logos/logo-2.png') }}" alt="">
                    </div>
                    <div>
                        <img class="img-fluid" src="{{ asset('FrontEnd/img/logos/logo-3.png') }}" alt="">
                    </div>
                    <div>
                        <img class="img-fluid" src="{{ asset('FrontEnd/img/logos/logo-4.png') }}" alt="">
                    </div>
                    <div>
                        <img class="img-fluid" src="{{ asset('FrontEnd/img/logos/logo-5.png') }}" alt="">
                    </div>
                    <div>
                        <img class="img-fluid" src="{{ asset('FrontEnd/img/logos/logo-6.png') }}" alt="">
                    </div>
                    <div>
                        <img class="img-fluid" src="{{ asset('FrontEnd/img/logos/logo-4.png') }}" alt="">
                    </div>
                    <div>
                        <img class="img-fluid" src="{{ asset('FrontEnd/img/logos/logo-2.png') }}" alt="">
                    </div>
                </div>
            </div>

        </div>

        <section class="section section-custom-map appear-animation" data-appear-animation="fadeInUpShorter">
            <section class="section section-default section-footer">
                <div class="container">
                    <div class="row mt-5 appear-animation" data-appear-animation="fadeInUpShorter">

                        <div class="col-lg-12">
                            <h2 class="font-weight-normal text-6 mb-4"><strong
                                    class="font-weight-extra-bold">What</strong> Client’s Say</h2>
                            <div class="row">
                                <div class="owl-carousel owl-theme dots-title dots-title-pos-2 mb-0"
                                     data-plugin-options="{'items': 1, 'autoHeight': true}">
                                    <div>
                                        <div class="col">
                                            <div class="testimonial testimonial-primary">
                                                <blockquote>
                                                    <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing
                                                        elit. Donec hendrerit vehicula est, in consequat.</p>
                                                </blockquote>
                                                <div class="testimonial-arrow-down"></div>
                                                <div class="testimonial-author">
                                                    <div class="testimonial-author-thumbnail">
                                                        <img src="{{ asset('FrontEnd/img/clients/client-1.jpg') }}" class="rounded-circle"
                                                             alt="">
                                                    </div>
                                                    <p><strong>John Doe</strong><span>Okler</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="col">
                                            <div class="testimonial testimonial-primary">
                                                <blockquote>
                                                    <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing
                                                        elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum
                                                        dolor sit amet, consectetur adipiscing elit. Donec hendrerit
                                                        vehicula est, in consequat.</p>
                                                </blockquote>
                                                <div class="testimonial-arrow-down"></div>
                                                <div class="testimonial-author">
                                                    <div class="testimonial-author-thumbnail">
                                                        <img src="{{ asset('FrontEnd/img/clients/client-1.jpg') }}" class="rounded-circle"
                                                             alt="">
                                                    </div>
                                                    <p><strong>John Doe</strong><span>Okler</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </section>
    </div>
    @include('layouts.FrontEnd.footer')
    
</div>
@include('layouts.FrontEnd.foot')

</body>
</html>
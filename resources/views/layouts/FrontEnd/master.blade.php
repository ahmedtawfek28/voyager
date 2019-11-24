<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
@include('layouts.FrontEnd.head')
<body>

<div class="body">
    @include('layouts.FrontEnd.header')


    <div role="main" class="main">
        @include('layouts.FrontEnd.slider')
        @include('layouts.FrontEnd.rotator')
        @include('layouts.FrontEnd.cloud')
        @include('layouts.FrontEnd.our_features')



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
                                                        <img src="{{ asset('FrontEnd/img/clients/client-1.jpg') }}"
                                                             class="rounded-circle"
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
                                                        <img src="{{ asset('FrontEnd/img/clients/client-1.jpg') }}"
                                                             class="rounded-circle"
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

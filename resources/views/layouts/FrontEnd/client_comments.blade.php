<section class="section section-custom-map appear-animation" data-appear-animation="fadeInUpShorter">
    <section class="section section-default section-footer">
        <div class="container">
            <div class="row mt-5 appear-animation" data-appear-animation="fadeInUpShorter">

                <div class="col-lg-12">
                    <h2 class="font-weight-normal text-6 mb-4"@if(app()->getLocale()=="ar") style="text-align: right;direction: rtl;" @endif><strong
                            class="font-weight-extra-bold">{{ trans('frontend.what') }}</strong> {{ trans('frontend.clients_say') }}</h2>
                    <div class="row">
                        <div class="owl-carousel owl-theme dots-title dots-title-pos-2 mb-0"
                             data-plugin-options="{'items': 1, 'autoHeight': true}">
                            @foreach($client_comments as $client_comment)
                                <div>
                                    <div class="col" @if(app()->getLocale()=="ar") style="text-align: right;direction: rtl;" @endif>
                                        <div class="testimonial testimonial-primary">
                                            <blockquote >
                                                <p class="mb-0">{{$client_comment->translate(app()->getLocale())->comment}} </p>
                                            </blockquote>
                                            <div class="testimonial-arrow-down"></div>
                                            <div class="testimonial-author"@if(app()->getLocale()=="ar") style="text-align: right;direction: rtl;" @endif>

                                                <p><strong>{{$client_comment->translate(app()->getLocale())->name}} </strong><span>{{$client_comment->translate(app()->getLocale())->jop}}</span></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</section>

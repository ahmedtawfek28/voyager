<div class="container mb-5 pb-4">

    <div class="row">
        <div class="col mb-4">
            <hr class="my-5">
        </div>
    </div>

    <div class="row pb-3" @if(app()->getLocale()=="ar") style="text-align: right;direction: rtl;" @endif>
        <div class="col-lg-12">
            <h2 class="font-weight-normal text-7">@if(app()->getLocale()=="en") {{ trans('frontend.our') }}  @endif
                <strong class="font-weight-extra-bold">{{ trans('frontend.features') }}</strong>
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
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <hr class="solid my-5">


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

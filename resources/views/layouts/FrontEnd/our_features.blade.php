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

            @foreach($features as $feature)
                    <div class="col-sm-4">

                        <div class="feature-box feature-box-style-2">
                            <div class="feature-box-icon">
                                <i class="{{$feature->icon}} text-color-primary"></i>
                            </div>
                            <div class="feature-box-info">
                                <h4 class="font-weight-bold text-4 mb-0">{{$feature->translate(app()->getLocale())->title}}</h4>
                                <br>{!! $feature->translate(app()->getLocale())->body !!}

                            </div>
                        </div>
                    </div>

                @endforeach

            </div>
        </div>

    </div>
    @include('layouts.FrontEnd.our_clients')
    @include('layouts.FrontEnd.our_partners')
</div>

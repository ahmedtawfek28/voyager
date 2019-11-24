<div class="appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="200">
    <div class="home-concept mt-5" @if(app()->getLocale()=="ar") dir="rtl"@endif>
        <div class="container">

            <div class="row text-center">
                <span class="sun"></span>
                <span class="cloud"></span>
                <div class="col-lg-2 ml-lg-auto">
                    <div class="process-image">
                        <img src="{{ url('storage/'.str_replace('\\','/',setting('home.Strategy')))}}" alt=""/>
                        <strong>{{ trans('frontend.strategy') }}</strong>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="process-image process-image-on-middle">
                        <img src="{{ url('storage/'.str_replace('\\','/',setting('home.Planning')))}}" alt=""/>
                        <strong>{{ trans('frontend.planning') }}</strong>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="process-image">
                        <img src="{{ url('storage/'.str_replace('\\','/',setting('home.Build')))}}" alt=""/>
                        <strong>{{ trans('frontend.build') }}</strong>
                    </div>
                </div>
                <div class="col-lg-4 ml-lg-auto">
                    <div class="project-image">
                        <div id="fcSlideshow" class="fc-slideshow">
                            <ul class="fc-slides">
                                <li><a href="portfolio-single-wide-slider.html"><img class="img-responsive"
                                                                                     src="{{ url('storage/'.str_replace('\\','/',setting('home.Our_Work_1')))}}"
                                                                                     alt=""/></a></li>
                                <li><a href="portfolio-single-wide-slider.html"><img class="img-responsive"
                                                                                     src="{{ url('storage/'.str_replace('\\','/',setting('home.Our_Work_2')))}}"
                                                                                     alt=""/></a></li>
                                <li><a href="portfolio-single-wide-slider.html"><img class="img-responsive"
                                                                                     src="{{ url('storage/'.str_replace('\\','/',setting('home.Our_Work_3')))}}"
                                                                                     alt=""/></a></li>
                            </ul>
                        </div>
                        <strong class="our-work">{{ trans('frontend.our_work') }}</strong>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

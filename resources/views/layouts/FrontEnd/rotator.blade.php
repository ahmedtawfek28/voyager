<div class="container"@if(app()->getLocale()=="ar") dir="rtl"@endif>

    <div class="row text-center pt-3">
        <div class="col-md-10 mx-md-auto">
            <h1 class="word-rotator slide font-weight-bold text-8 mb-3 appear-animation"
                data-appear-animation="fadeInUpShorter">
                <span>{{$first_words}}</span>
                <span class="word-rotator-words bg-primary">

                            @foreach($mid_words as $key=>$mid)
                        <b @if($key==0) class="is-visible" @endif>{{$mid}}</b>
                    @endforeach
								</span>
                <span> {{$last_words}}</span>
            </h1>
            <p class="lead appear-animation" data-appear-animation="fadeInUpShorter"
               data-appear-animation-delay="300">
                @if(app()->getLocale()=="ar") {{setting('home.word-rotator-details-ar')}}
                @else
                    {{setting('home.word-rotator-details')}}
                @endif

            </p>
        </div>
    </div>

</div>

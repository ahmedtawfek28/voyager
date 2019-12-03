    <hr class="solid my-5">

    <h2 class="font-weight-normal text-7" style="text-align: center;">@if(app()->getLocale()=="en") {{ trans('frontend.our') }}  @endif
        <strong class="font-weight-extra-bold">{{ trans('frontend.clients') }}</strong>
    </h2>
    <div class="row text-center mt-5">
        <div class="owl-carousel owl-theme carousel-center-active-item"
             data-plugin-options="{'responsive': {'0': {'items': 1}, '476': {'items': 1}, '768': {'items': 5}, '992': {'items': 7}, '1200': {'items': 7}}, 'autoplay': true, 'autoplayTimeout': 3000, 'dots': false}">
           @foreach($our_clients as $client)

            <div>
                <img class="img-fluid" src="{{ url('storage/'.str_replace('\\','/',$client->img))}}" alt="{{$client->title}}">
            </div>
            @endforeach
        </div>
    </div>



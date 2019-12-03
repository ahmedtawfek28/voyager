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
        @include('layouts.FrontEnd.client_comments')

    </div>
    @include('layouts.FrontEnd.footer')

</div>
@include('layouts.FrontEnd.foot')

</body>
</html>

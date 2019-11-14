<header id="header" class="header-effect-shrink"
data-plugin-options="{'stickyEnabled': true, 'stickyEffect': 'shrink', 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyChangeLogo': true, 'stickyStartAt': 120, 'stickyHeaderContainerHeight': 70}">
<div class="header-body border-top-0">
<div class="header-top"@if(app()->getLocale()=="ar")dir="rtl"@endif>
    <div class="container">
        <div class="header-row py-2">
            <div class="header-column justify-content-start">
                <div class="header-row">
                    <nav class="header-nav-top">
                        <ul class="nav nav-pills">
                               
                                <li class="nav-item nav-item-left-border nav-item-left-border-remove nav-item-left-border-sm-show">
                                        <a class="nav-link" href="#" role="button" id="dropdownLanguage" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                                            @if(LaravelLocalization::getCurrentLocaleName()=='English')
                                            <img src="{{ asset('FrontEnd/img/blank.gif')}}" class="flag flag-us" alt="English"/> English
                                            <i class="fas fa-angle-down"></i>
                                            @elseif(LaravelLocalization::getCurrentLocaleName()=='Arabic')
                                            <img src="{{ asset('FrontEnd/img/blank.gif')}}" class="flag flag-eg" alt="العربية"/> العربية
                                            <i class="fas fa-angle-down"></i>
                                            @endif
                                        </a>
                                     @foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                                     @if(substr($properties['regional'], 0, 2)!=app()->getLocale())
                                     @if(app()->getLocale()!="en")
                                     <div class="dropdown-menu" aria-labelledby="dropdownLanguage">
                                            <a class="dropdown-item" hreflang="{{ $localeCode }}" href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}"><img
                                                    src="{{ asset('FrontEnd/img/blank.gif')}}" class="flag flag-us" alt="English"/> English</a>
                                     </div>                                                 
                                    @else
                                    <div class="dropdown-menu" aria-labelledby="dropdownLanguage">
                                            <a class="dropdown-item" hreflang="{{ $localeCode }}" href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}"><img
                                                    src="{{ asset('FrontEnd/img/blank.gif')}}" class="flag flag-eg" alt="العربية"/> العربية</a>
                                     </div>            
                                        @endif
                                        @endif
                                           @endforeach
                           
                                       
                                </li>
                           
                            <li class="nav-item nav-item-left-border nav-item-left-border-remove nav-item-left-border-sm-show">
                                <span class="ws-nowrap"><i class="fas fa-phone"></i> {{ setting('general.phone') }}</span>
                            </li>
                            <li class="nav-item nav-item-left-border nav-item-left-border-remove nav-item-left-border-sm-show">
                                <span class="ws-nowrap"><i class="fas fa-map-marker-alt"></i> 
                                    @if(app()->getLocale()=="ar") 
                                    {{ setting('general.address_ar') }}
                                    @else
                                    {{ setting('general.address_en') }}
                                    @endif 
                                </span>
                            </li>

                        </ul>
                    </nav>
                </div>
            </div>
            <div class="header-column justify-content-end">
                <div class="header-row">
                    <ul class="header-social-icons social-icons d-none d-sm-block social-icons-clean">
                        <li class="social-icons-facebook"><a href="{{setting('general.facebook')}}" target="_blank"
                                                             title="Facebook"><i
                                class="fab fa-facebook-f"></i></a></li>
                        <li class="social-icons-twitter"><a href="{{setting('general.twitter')}}" target="_blank"
                                                            title="Twitter"><i
                                class="fab fa-twitter"></i></a></li>
                        <li class="social-icons-linkedin"><a href="{{setting('general.linkedin')}}" target="_blank"
                                                             title="Linkedin"><i
                                class="fab fa-linkedin-in"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="header-container container">
    <div class="header-row">
        <div class="header-column">
            <div class="header-row">
                <div class="header-logo">
                    <a href="index.html">
                        <img alt="Porto" width="100" height="48" data-sticky-width="82"
                             data-sticky-height="40" src="{{ asset('FrontEnd/img/logo.png') }}">
                    </a>
                </div>
            </div>
        </div>
        <div class="header-column justify-content-end">
            <div class="header-row">
                <div class="header-nav header-nav-line header-nav-top-line header-nav-top-line-with-border order-2 order-lg-1">
                    <div class="header-nav-main header-nav-main-square header-nav-main-effect-2 header-nav-main-sub-effect-1">
                        <nav class="collapse">
                            <ul class="nav nav-pills" id="mainNav">
                                <li class="dropdown">
                                    <a class="dropdown-item dropdown-toggle active" href="index.html">
                                        Home
                                    </a>
                                </li>
                                <li class="dropdown">
                                        <a class="dropdown-item dropdown-toggle active" href="index.html">
                                            Home
                                        </a>
                                </li>
                                <li class="dropdown">
                                        <a class="dropdown-item dropdown-toggle active" href="index.html">
                                            Home
                                        </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <button class="btn header-btn-collapse-nav" data-toggle="collapse"
                            data-target=".header-nav-main nav">
                        <i class="fas fa-bars"></i>
                    </button>
                </div>
                <div class="header-nav-features header-nav-features-no-border header-nav-features-lg-show-border order-1 order-lg-2">
                    <div class="header-nav-feature header-nav-features-search d-inline-flex">
                        <a href="#" class="header-nav-features-toggle" data-focus="headerSearch"><i
                                class="fas fa-search header-nav-top-icon"></i></a>
                        <div class="header-nav-features-dropdown" id="headerTopSearchDropdown">
                            <form role="search" action="page-search-results.html" method="get">
                                <div class="simple-search input-group">
                                    <input class="form-control text-1" id="headerSearch" name="q"
                                           type="search" value="" placeholder="Search...">
                                    <span class="input-group-append">
                                                <button class="btn" type="submit">
                                                    <i class="fa fa-search header-nav-top-icon"></i>
                                                </button>
                                            </span>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</header>
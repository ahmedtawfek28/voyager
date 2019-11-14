<?php

namespace App\Http\Controllers;
use App\Slide;
use Illuminate\Support\Facades\App;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sliders = Slide::withTranslation(App::getLocale() )->get();

        // dd($slider->getTranslatedAttribute('title', App::getLocale(), 'fallbackLocale'));
        return view('welcome', compact('sliders'));
    }

}

<?php

namespace App\Http\Controllers;
use App\MenuItem;
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
	    $items=MenuItem::where('menu_id',2)->withTranslation(App::getLocale() )->orderby('order','asc')->get();
//dd($menu->translate(App::getLocale())->title);
        // dd($slider->getTranslatedAttribute('title', App::getLocale(), 'fallbackLocale'));
        return view('welcome', compact('sliders','items'));
    }

}

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
        $sliders = Slide::withTranslation(App::getLocale())->get();
        $items = MenuItem::where('menu_id', 2)->withTranslation(App::getLocale())->orderby('order', 'asc')->get();
//        ------------------------rotator Words --------------------------------------
        if(App::getLocale()=="en"){
            $split_rotator = explode("|", setting('home.word-rotator-words'));
        }
        else{
            $split_rotator = explode("|", setting('home.word-rotator-words-ar'));

        }

        $first_words = $split_rotator[0];
        $last_words = $split_rotator[count($split_rotator) - 1];
        $mid_words = [];
        $count = 0;
        for ($i = 1; $i < count($split_rotator) - 1; $i++) {
            $mid_words[$count] = $split_rotator[$i];
            $count++;
        }

        //        ------------------------rotator Words --------------------------------------
        $sliders = Slide::withTranslation(App::getLocale())->get();
        return view('welcome', compact('sliders', 'items', 'first_words', 'mid_words', 'last_words'));
    }

}

<?php

namespace App\Http\Controllers;

use App\ClientComment;
use App\MenuItem;
use App\OurClient;
use App\OurPartner;
use App\Slide;
use App\Feature;
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
        $features = Feature::withTranslation(App::getLocale())->get();
        $our_clients = OurClient::get();
        $our_partners = OurPartner::get();
        $client_comments = ClientComment::withTranslation(App::getLocale())->get();

        return view('welcome', compact('client_comments','our_partners','our_clients','sliders', 'items', 'first_words', 'mid_words', 'last_words','features'));
    }

}

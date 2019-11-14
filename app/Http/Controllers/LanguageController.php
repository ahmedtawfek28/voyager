<?php

namespace App\Http\Controllers;
use App\Models\OrderList;
use Illuminate\Support\Facades\Auth;
use App\Admins;
use Illuminate\Http\Request;
use function MongoDB\BSON\toJSON;

class LanguageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function ar()
    {
        $admin=Admins::find(Auth::id());
        $admin->settings="{\"locale\":\"ar\"}";
        $admin->save();
        return back();

    }public function en()
    {
        $admin=Admins::find(Auth::id());
        $admin->settings="{\"locale\":\"en\"}";
        $admin->save();
        return back();
    }


}

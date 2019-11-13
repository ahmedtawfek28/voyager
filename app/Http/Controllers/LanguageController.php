<?php

namespace App\Http\Controllers;
use App\Models\OrderList;
use Illuminate\Support\Facades\Auth;
use App\Admin;
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
        $admin=Admin::find(Auth::id());
        $collection = collect(['local' => 'ar']);

        $collection->toJson();
        $admin->settings=$collection;
        $admin->save;
        return back();

    }public function en()
    {
        $admin=Admin::find(Auth::id())->update(['settings->local' => 'en']);
        return back();

    }


}

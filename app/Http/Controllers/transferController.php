<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\transfer;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;

class transferController extends Controller
{
    //


    public function transfer(){
    	$transfer = new Transfer();
    	$transfer->from = Input::get('from');
    	$transfer->to = Input::get('to');
	    //$buy->carte = Input::get('carte');
	    $transfer->save();

	    return Redirect::back();
    }
}

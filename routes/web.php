<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/transfer',function(){
	return view('transfer');
})->name('transfer');

Route::get('/exchange', function(){
	return view('Exchange');
})->name('exchange');

Route::get('/offers', function(){
	return view('offers');
})->name('offers');

Route::get('/buy',function(){
	return view('buy');
})->name('buy');

Route::get('/transf','transferController@transfer')->name('transfer2');

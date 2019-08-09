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
Route::get('/',function(){
    return view('layout');
});
Route::get('child',function(){
    return view('child');
});
Route::get('user',function(){
    return view('user');
});
Route::get('rest',function (){
    return view('rest');
});
Route::get('createrest',function (){
    return view('createrest');
});
Route::get('deleterest',function (){
    return view('deleterest');
});
Route::get('result',function (){
    return view ('result');
});
Route::get('out',function (){
    return view('out');
});
Route::get('createout',function (){
    return view('createout');
});
Route::get('deleteout',function (){
    return view('deleteout');
});
Route::get('changeA',function (){
    return view('changeA');
});
Route::get('createleave',function (){
    return view('createleave');
});
Route::get('deleteleave',function (){
    return view('deleteleave');
});

Route::any('showleavetype',"AttentanceController@showleavetype");

Route::any('showleave',"AttentanceController@showleave");

Route::any('showrule',"AttentanceController@showrule");

Route::any('showover',"AttentanceController@showover");

Route::any('overtime',"AttentanceController@overtime");

Route::any('deleteouter',"AttentanceController@deleteouter");

Route::any('createouter',"AttentanceController@createouter");

Route::any('showout',"AttentanceController@showout");

Route::get('showrest',"AttentanceController@showrest");

Route::any('deleteuser',"AttentanceController@deleteuser");

Route::any('deleteview',"AttentanceController@deleteview");

Route::any('saveupdate',"AttentanceController@saveupdate");

Route::any('update',"AttentanceController@update");

Route::any('save',"AttentanceController@save");

Route::any('create',"AttentanceController@create");

Route::get('showuser',"AttentanceController@showuser");

Route::get('Userlate',"AttentanceController@Userlate");

Route::get('Leaveearly',"AttentanceController@Leaveearly");

Route::get('Userabsence',"AttentanceController@Userabsence");

Route::get('SPA',"AttentanceController@SPA");

Route::get('SPB',"AttentanceController@SPB");

Route::get('SPC',"AttentanceController@SPC");

Route::post('ChangeRule',"AttentanceController@ChangeRule");

Route::post('ChangeUserRule',"AttentanceController@ChangeUserRule");

Route::post('changeVocation',"AttentanceController@changeVocation");

Route::post('deletevocation',"AttentanceController@deletevocation");

Route::get('ClassifyEndTime',"AttentanceController@ClassifyEndTime");

Route::any('time',"AttentanceController@time");

Route::any('overtime',"AttentanceController@overtime");

Route::any('deleteover',"AttentanceController@deleteover");

Route::any('late',"AttentanceController@late");

Route::any('insertleave',"AttentanceController@insertleave");

Route::any('deleteLeave',"AttentanceController@deleteLeave");


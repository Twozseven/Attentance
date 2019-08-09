<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
class UserController extends Controller
{
   public function index(){
       $attentance=DB::table('attentance')->get();
       return view ('user.index',['attentance'=>$attentance]);
   }
}

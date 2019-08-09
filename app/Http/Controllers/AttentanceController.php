<?php
namespace App\Http\Controllers;
use App\User;
use http\Env\Response;
use Illuminate\Support\Facades\DB;
use App\Http\MLCommomUtil;
use Illuminate\Http\Request;
use App\Attentance;
use App\Submission;
use App\Http\Controllers\Controller;
use carbon\carbon;

class AttentanceController extends Controller{

      //查询出正常考勤规则下迟到人的所有信息
       public function Userlate(){
        $userlater=DB::table('attentance')
            ->rightjoin('user','attentance.user_id','=','user.id')
            ->where('rule_type','1')
            ->wherebetween('firsttime',['09:30','10:00'])
            ->orwhere('rule_type','1')
            ->wherebetween('firsttime',['13:30','14:00'])
            ->get();
        return response()->json(['status'=>'1','msg'=>'success',$userlater]) ;
       }
       //查询出正常考勤规则下早退的人的信息
       public function Leaveearly(){
        $leaveearly=DB::table('attentance')
            ->rightjoin('user','attentance.user_id','=','user.id')
            ->where('rule_type','1')
            ->wherebetween('lasttime',['11:30','12:00'])
            ->orwhere('rule_type','1')->wherebetween('lasttime',['18:00','18:30'])
           ->get();
       return response()->json(['status'=>1,'msg'=>'success',$leaveearly]);
       }

       //查询出正常考勤规则下缺勤人的所有信息
      public function Userabsence(){
        $userab=DB::table('attentance')
            ->rightjoin('user','attentance.user_id','=','user.id')
            ->where('rule_type','=','1')
            ->wherebetween('firsttime',['10:00','12:00'])
            ->orwhere('rule_type','=','1')->wherebetween('firsttime',['14:00','18:30'])
            ->orwhere('rule_type','=','1')->whereTime('lasttime','<','11:30')
            ->orwhere('rule_type','=','1')->whereTime('lasttime','<','18:00')
              ->get();
        return response()->json(['status'=>'1','msg'=>'success',$userab]);
      }
      //查询出特殊考勤规则A下不正常人的所有信息
      public function SPA(){
        $time1=DB::table('attentance_rule_type')->where('id','=','2')->first()->start_time;
        $userspa=DB::table('attentance')->rightjoin('user','attentance.user_id','=','user.id')
            ->where('rule_type','=','2')
            ->where('firsttime','>',$time1)
            ->orwhere('rule_type','=','2')
            ->where('working_time','<','9')
            ->get();
        return response()->json(['status'=>'1','msg'=>'success',$userspa]);
      }
      //查询特殊考勤规则B下不正常人的所有信息
      public function SPB(){
          $time2=DB::table('attentance_rule_type')->where('id','=','3')->first()->start_time;
          $userspb=DB::table('attentance')->rightjoin('user','attentance.user_id','=','user.id')
              ->where('rule_type','=','3')
              ->whereTime('firsttime','>',$time2)
              ->get();
          return response()->json(['status'=>'1','msg'=>'success',$userspb]);
      }
      //查询出特殊考勤规则C下不正常人的所有信息
    public function SPC(){
        $time3=DB::table('attentance_rule_type')->where('id','=','4')->first()->start_time;
        $time4=DB::table('attentance_rule_type')->where('id','=','4')->first()->end_time;
        $userspc=DB::table('attentance')->rightjoin('user','attentance.user_id','=','user.id')
            ->where('rule_type','=','4')
            ->whereTime('firsttime','>',$time3)
            ->orwhere('rule_type','=','4')
            ->whereTime('lasttime','<',$time4)
            ->get();
        return response()->json(['status'=>'1','msg'=>'success',$userspc]);

    }

    //修改特殊考勤的时间
    public function ChangeRule(Request $request)
    {   $id=$request->input('id');
        $start_time = $request->input('start_time');
        $end_time=$request->input('end_time');
        $m_latetime=$request->input('m_latetime');
        $e_leavetime=$request->input('e_latetime');
        $workingtime=$request->input('workingtime');
        if ($start_time != null) {
            DB::table('attentance_rule_type')->where('id', $id)->update(['start_time' => $start_time]);}
        if($m_latetime!=null){
            DB::table('attentance_rule_type')->where('id',$id)->update(['m_latetime'=>$m_latetime]);}
        if($e_leavetime!=null){
            DB::table('attentance_rule_type')->where('id',$id)->update(['e_leavetime'=>$e_leavetime]);}
        if($end_time!=null){
            DB::table('attentance_rule_type')->where('id',$id)->update(['end_time'=>$end_time]);}
        if($workingtime!=null){
            DB::table('attentance_rule_type')->where('id',$id)->update(['workingtime'=>$workingtime]);}
        return view('child');
    }

    //设置人员所适用的考勤规则类型，有1，2，3.4，四个可以设置，分别对应正常，A，B，C四种考勤规则
    public function ChangeUserRule(Request $request){
        $id=$request->input('id');
        $ruletype=$request->input('ruletype');

        if($ruletype!=null){
         DB::table('user')->where('id','=',$id)->update(['rule_type'=>$ruletype]);

        }
    }
    //显示假期表
    public function showrest(){
       $rests=DB::table('rest')->paginate(20);
           return view('rest',['rests'=>$rests]);
    }
    //添加假期类型，假期开始时间，假期结束时间
    public function changeVocation(Request $request){
        $id=$request->input('id');
        $rest_begin=$request->input('rest_begin_time');
        $rest_end=$request->input('rest_end_time');
        $rest_type=$request->input('rest_type');
        DB::table('rest')->insert(['id'=>$id,'rest_begin_time' => $rest_begin,'rest_end_time' => $rest_end,
           'rest_type' => $rest_type]);
        return view('child');
    }
    //删除假期
    public function deletevocation(Request $request){
        $id=$request->input('id');
        DB::table('rest')->where('id',$id)->delete();
        return view('child');
    }
     //按照4个时间段分类18：30-19：30，19：30-20：30，20：30-21：30，21：20-22：30
     public function ClassifyEndTime(){
     $endtime1=array(DB::table('attentance')->wherebetween('lasttime',['18:30','19:30'])->get()->toArray());
     $endtime2=array(DB::table('attentance')->wherebetween('lasttime',['19:30','20:30'])->get()->toArray());
     $endtime3=array(DB::table('attentance')->wherebetween('lasttime', ['20:30', '21:30'])->get()->toArray());
     $endtime4=array(DB::table('attentance')->wherebetween('lasttime',['21:30','22:30'])->get()->toArray());
     $arr1=array('0'=>$endtime1,'1'=>$endtime2,'2'=>$endtime3,'3'=>$endtime4);
         print ("<pre/>")    ;
         print_r($arr1);
       print ("<pre/>")    ;}

    //计算工作时长并加入到表中
    public function time(){
        $number=DB::table('attentance')->count();

        for($i=1;$i<=$number;$i++){
           $time1=DB::table('attentance')->where('id',$i)->value('firsttime');
           $time2=DB::table('attentance')->where('id',$i)->value('lasttime');
           $time3=strtotime($time1);
           $time4=strtotime($time2);
           $diff = round((($time4-$time3)/3600),2);
           DB::table('attentance')->where('id','=',$i)->update(['working_time'=>$diff]);
        }
    }

    //计算加班时长
    public function overtime()
    {
        $number = DB::table('attentance')->count();
        for ($i = 1; $i <= $number; $i++) {
            $date = DB::table('attentance')->where('id', $i)->value('date');
            $w = date('N', strtotime($date)) ;
           // echo $w,"<br/>";
            if ($w >=6) {

                $time1 = DB::table('attentance')->where('id', $i)->value('firsttime');
                $time2 = DB::table('attentance')->where('id', $i)->value('lasttime');
                $userid = DB::table('attentance')->where('id', $i)->value('user_id');
                //$date1=DB::table('attentance')->where('id',$i)->value('date');
                $time3 = strtotime($time1);
                $time4 = strtotime($time2);
                $diff = round((($time4 - $time3) / 3600), 2);
                if ($diff < 3.5) {
                    $days = 0;
                } elseif ($diff >= 3.5 and $diff < 7) {
                    $days = 0.5;
                } elseif ($diff > 7) {
                    $days = 1;
                }
               // echo$diff,"---",$days,"<br/>";
                DB::table('over')->insert(['over_id' => $userid, 'overstart_time' => $time1, 'overend_time' => $time2,
                    'over_times' => $diff, 'over_date' => $date, 'over_days' => $days]);
            } elseif ($w <6) {
                // 当天 下班时间time2
                $G_time2 = DB::table('attentance')->where('id', $i)->value('lasttime');
                if ($G_time2 > '19:00') {
                    $G_userid = DB::table('attentance')->where('id', $i)->value('user_id');
                    $G_date1 = DB::table('attentance')->where('id', $i)->value('date');
                    $G_date = strtotime(DB::table('attentance')->where('id', $i)->value('date'));
                    $G_newdate1 = $G_date + 86400;
                    $G_newdate = date('Y-m-d', $G_newdate1);
                    //第二天上班时间time5
                    $G_time5 = DB::table('attentance')->where('user_id', $G_userid)->where('date', $G_newdate)->value('firsttime');
                    //标准上班时间time6
                    $G_time6 = strtotime('09:30');
                    //第二天晚来的时间time1
                    if ($G_time5 < '09:30') {
                        $G_time1 = 0;
                    } else {
                        $G_time1 = strtotime($G_time5) - $G_time6;
                    }
                    //开始计算加班的时间time3
                    $G_time3 = strtotime('19:00');
                    $G_time4 = strtotime($G_time2);
                    //最终加班时间diff
                    $G_diff = round((($G_time4 - $G_time3 - $G_time1) / 3600), 2);
                  //   echo $G_diff ,"---","这是工作日加班","<br/>";
                        DB::table('over')->insert(['over_id' => $G_userid, 'overstart_time' => '19:00', 'overend_time' => $G_time2
                        , 'over_times' => $G_diff, 'over_date' => $G_date1]);
                }
            }
        }
         return view('child');
    }

    //删除加班时长表
    public function deleteover(){
        DB::table('over')->truncate();
        return view('child');
    }
    //新的对考勤结果的判断
    public function  late(){
        $number=DB::table('attentance')->count();

        for($i=1;$i<=$number;$i++){
            //先看一下这条记录所适用的考勤规则是哪种
            $userid=DB::table('attentance')->where('id',$i)->value('user_id');
            $type=DB::table('user')->where('id',$userid)->value('rule_type');
            $workingtime=DB::table('attentance')->where('id', $i)->value('working_time');
            $date = DB::table('attentance')->where('id', $i)->value('date');
            $name=DB::table('user')->where('id',$userid)->value('name');
           switch ($type) {
               case"1":
           $date1 = strtotime($date);
           $date2 = $date1-86400;
           $predate = date('Y-m-d', $date2);
           $prelasttime = DB::table('attentance')->where('date', $predate)->where('user_id', $userid)->value('lasttime');
           //如果前一天是20：30-23：00打卡的
           if ($prelasttime>'20:30' and $prelasttime<'23:00') {
           $firsttime1 = DB::table('attentance')->where('id', $i)->value('firsttime');
           if ($firsttime1>'13:30' and $firsttime1<'14:00') {
                $result="考勤失败  失败原因：迟到";
           }
        elseif
            ($firsttime1 > '10:30' and $firsttime1 < '11:00'){
                $result="考勤失败  失败原因：迟到";
                   }elseif ($firsttime1 > '11:30' and $firsttime1 < '12:00'){
                $result= "考勤失败  失败原因：旷工";
                   } elseif ($firsttime1 > '14:00'){
                $result="考勤失败  失败原因：旷工";
                   } else{
                $result="考勤正常";
            }
                   $lasttime1 = DB::table('attentance')->where('id', $i)->value('lasttime');
                   if ($lasttime1 < '18:00') {
                       $result1= "考勤失败  失败原因：旷工";
                   } elseif ($lasttime1 < '18:30' and $lasttime1 > '18:00') {
                       $result1= "考勤失败  失败原因：早退";
                   } elseif ($lasttime1 < '11:30') {
                       $result1="考勤失败  失败原因：旷工";
                   } elseif ($lasttime1 > '11:30' and $lasttime1 < '12:00') {
                       $result1="考勤失败  失败原因：早退";
                   } else {
                       $result1= "考勤正常";
                   }
              $response=array ('id'=>$i,'user_id'=>$userid,'name'=>$name,'firsttime'=>$firsttime1
               ,'lasttime'=>$lasttime1,'working_time'=>$workingtime,'date'=>$date,'result'=>$result,'result2'=>$result1);
               //如果前一天是23：00之后打卡的
               } elseif ($prelasttime > '23:00'){
                   $firsttime2 = DB::table('attentance')->where('id', $i)->value('firsttime');
                   if ($firsttime2 > '13:00' and $firsttime2 < '13:30') {
                       $result2="考勤失败  失败原因：迟到";
                   } elseif ($firsttime2 > '13:30') {
                       $result2="考勤失败  失败原因：旷工";
                   } else {
                       $result2="考勤正常";
                   }
                   $lasttime2 = DB::table('attentance')->where('id', $i)->value('lasttime');
                   if ($lasttime2 < '18:00') {
                       $result3="考勤失败  失败原因：旷工";
                   } elseif ($lasttime2 < '18:30' and $lasttime2 > '18:00') {
                       $result3="考勤失败  失败原因：早退";
                   } else {
                       $result3="考勤正常";
                   }
                   $response=array('id'=>$i,'user_id'=>$userid,'name'=>$name,'firsttime'=>$firsttime2
                   ,'lasttime'=>$lasttime2,'working_time'=>$workingtime,'date'=>$date,'result'=>$result2,'result2'=>$result3);
               //如果前一天正常打卡
               }else {
               $firsttime3 = DB::table('attentance')->where('id', $i)->value('firsttime');
               if ($firsttime3 > '13:30' and $firsttime3 < '14:00') {
                   $result4="考勤失败  失败原因：迟到";
               } elseif ($firsttime3 > '9:30' and $firsttime3 < '10:00') {
                   $result4="考勤失败  失败原因：迟到";
               } elseif ($firsttime3 > '10:00' and $firsttime3 < '12:00') {
                   $result4="考勤失败  失败原因：旷工";
               } elseif ($firsttime3 > '14:00') {
                   $result4="考勤失败  失败原因：旷工";
               } else {
                   $result4="考勤正常";
               }
               $lasttime3 = DB::table('attentance')->where('id', $i)->value('lasttime');
               if ($lasttime3 < '18:00') {
                   $result5="考勤失败  失败原因：旷工";
               } elseif ($lasttime3 < '18:30' and $lasttime3 > '18:00') {
                   $result5="考勤失败  失败原因：早退";
               } elseif ($lasttime3 < '11:30') {
                   $result5="考勤失败  失败原因：旷工";
               } elseif ($lasttime3 > '11:30' and $lasttime3 < '12:00') {
                   $result5="考勤失败  失败原因：早退";
               } else {
                   $result5="考勤正常";
               }

               $response=array('id'=>$i,'user_id'=>$userid,'name'=>$name,'firsttime'=>$firsttime3
               ,'lasttime'=>$lasttime3,'working_time'=>$workingtime,'date'=>$date,'result'=>$result4,'result2'=>$result5);
           }
                 break;
               //特殊考勤A
               case"2";
               $firsttime4 = DB::table('attentance')->where('id', $i)->value('firsttime');
                   $lasttime4=DB::table('attentance')->where('id', $i)->value('lasttime');
               $workingtime=DB::table('attentance')->where('id',$i)->value('working_time');
               $time1=DB::table('attentance_rule_type')->where('id','=','2')->first()->start_time;
               $workingtime2=DB::table('attentance_rule_type')->where('id','=','2')->first()->workingtime;
               if($firsttime4<$time1 and$workingtime>$workingtime2)
                   $result6="考勤正常";
               else{
                   $result6="考勤失败";
               }
               $response=array('id'=>$i,'user_id'=>$userid,'name'=>$name,'firsttime'=>$firsttime4
               ,'lasttime'=>$lasttime4,'working_time'=>$workingtime,'date'=>$date,'result'=>$result6);
               break;
               //特殊考勤B
               case"3";
                   $firsttime5 = DB::table('attentance')->where('id', $i)->value('firsttime');
                   $lasttime5=DB::table('attentance')->where('id', $i)->value('lasttime');
                   $time2=DB::table('attentance_rule_type')->where('id','=','3')->first()->start_time;
                   if($firsttime5<$time2){
                       $result7="考勤正常";
                   }else{
                       $result7="考勤失败";
                   }
                   $response=array('id'=>$i,'user_id'=>$userid,'name'=>$name,'firsttime'=>$firsttime5
                   ,'lasttime'=>$lasttime5,'working_time'=>$workingtime,'date'=>$date,'result'=>$result7);
               break;
               //特殊考勤C
               case"4";
                   $firsttime6 = DB::table('attentance')->where('id', $i)->value('firsttime');
                   $lasttime6 = DB::table('attentance')->where('id', $i)->value('lasttime');
                   $time3=DB::table('attentance_rule_type')->where('id','=','4')->first()->start_time;
                   $time4=DB::table('attentance_rule_type')->where('id','=','4')->first()->end_time;
                   if($firsttime6<$time3 and$lasttime6>$time4)
                       $result8="考勤正常";
                   else{
                       $result8="考勤失败";
                   }
                   $response=array('id'=>$i,'user_id'=>$userid,'name'=>$name,'firsttime'=>$firsttime6
                   ,'lasttime'=>$lasttime6,'working_time'=>$workingtime,'date'=>$date,'result'=>$result8);
               break;
           }

                   $arr[$i-1]=$response;
                   $arr1=array('status'=>'1','msg'=>'success','data'=>$arr);
        }     print ("<pre/>")    ;
            //  print_r($arr);
              print_r($arr1);
              print ("<pre/>")    ;
       // return json_encode($arr);
      // return view('result',['results'=>$arr]);
    }
    //显示请假表
    public function showleave(){
        $leaves=DB::table('leave')->paginate(20);
        return view('leave',['leaves'=>$leaves]);
    }
    //增加请假记录
    public function  insertleave(Request $request){
        $id=$request->input('id');
        $leaver_id=$request->input('leaver_id');
        $vocation_begin=$request->input('vocation_begin');
        $vocation_end=$request->input('vocation_end');
        $vocation_days=$request->input('vocation_days');
        $type=$request->input('type');
        //$typename=DB::table('leave_type')->where('qid',$vocationtype)->value('type');
        DB::table('leave')->insert(['id'=>$id,'leaver_id' => $leaver_id,'vocation_begin' =>$vocation_begin,
            'vocation_end' => $vocation_end,'vocation_days'=>$vocation_days,'type'=>$type]);
        return view('child');
    }
    //删除请假记录
    Public function deleteLeave(Request $request){
        $id=$request->input('id');
        DB::table('leave')->where('id',$id)->delete();
        return view('child');
    }
    //显示请假类型
    public function showleavetype(){
          $types= DB::table('leave_type')->get();
           return view('leavetype',['types'=>$types]);
    }
    //显示user的信息
    public function showuser(){
           $users=DB::table('user')->paginate(20);
       // return json_encode($users);
           return view('user',['users'=>$users]);
    }
    //返回到新增用户的界面
    public function create(){
           return view('create');
    }
    //保存新增用户的信息
    public function save(Request $request)
    {
        $id = $request->input('id');
        $name = $request->input('name');
        $departmentname =$request->input('departmentname');
        $ruletype =$request->input('ruletype');

        DB::table('user')->insert(['id'=>$id,'name' => $name,'department_name' =>$departmentname, 'rule_type'=>$ruletype]);
        return view('child');
    }
        //返回到修改用户的信息的界面
      public function update(){
           return view('update');
    }
    //修改用户信息
    public function saveupdate(Request $request){
        $id = $request->input('id');
        $name = $request->input('name');
        $departmentname =$request->input('departmentname');
        $ruletype =$request->input('ruletype');
        DB::table('user')->where('id',$id)->update(['name' => $name,'department_name' =>$departmentname, 'rule_type'=>$ruletype]);
        return view('update');
    }
    //返回到用户的删除界面
    public function deleteview(){
           return view('deleteuser');
    }
    //删除用户信息
    public function deleteuser(Request $request){
        $id = $request->input('id');
        DB::table('user')->where('id',$id)->delete();
        return view('child');
    }
    //显示出差信息
    public function showout(){
      $outers=DB::table('out')->paginate(20);
      return view('out',['outers'=>$outers]);
    }
    //添加出差信息
    public function createouter(Request $request){
        $id = $request->input('id');
        $outer_id=$request->input('outer_id');
        $name = $request->input('name');
        $out_time =$request->input('out_time');
        $back_time =$request->input('back_time');
        $out_days=$request->input('out_days');

        DB::table('out')->insert(['id'=>$id,'name' => $name,'outer_id'=>$outer_id,
            'out_time'=>$out_time, 'back_time'=>$back_time,'out_days'=>$out_days]);
        return view('child');
    }
    //删除出差信息
    public function deleteouter(Request $request){
           $id= $request->input('id');
           DB::table('out')->where('id',$id)->delete();
           return view('child');
    }
    //显示加班的界面
    public function showover(){
        $overs=DB::table('over')->paginate(20);
        return view('over',['overs'=>$overs]);
    }
    //显示考勤规则的界面
    public function showrule(){
        $rules=DB::table('attentance_rule_type')->get();
        return view('rule',['rules'=>$rules]);
    }
}

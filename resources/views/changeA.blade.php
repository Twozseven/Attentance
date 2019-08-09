
@extends('child')

@section('content')
    <form class="form-horizontal" method="post" action="http://lart.loc.com/index.php/ChangeRule" >
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="id" class="col-sm-2 control-label">考勤规则编号</label>
        <input type="text" class="form-control" id="id" name="id" placeholder="请输入考勤规则编号">
        <p >编号不能为空</p>
    </div>
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="start_time" class="col-sm-2 control-label">上午签到规定时间</label>
        <input type="text" class="form-control" id="start_time" name="start_time" placeholder="请输入上午签到规定时间">
        <P> </P>
    </div>
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="m_latetime" class="col-sm-2 control-label">上午签到最迟打卡时间</label>
        <input type="text" class="form-control" id="m_latetime" name="m_latetime" placeholder="请输入上午签到最迟打卡时间">
        <P> </P>
    </div>
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="e_leavetime" class="col-sm-2 control-label">晚上下班规定打卡时间</label>
        <input type="text" class="form-control" id="e_leavetime" name="e_leavetime" placeholder="请输入晚上下班规定打卡时间">
    </div>
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="end_time" class="col-sm-2 control-label">晚上下班早退时间</label>
        <input type="text" class="form-control" id="end_time" name="end_time" placeholder="请输入晚上下班早退时间">
    </div>
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="workingtime" class="col-sm-2 control-label">工作时长</label>
        <input type="text" class="form-control" id=workingtime" name="workingtime" placeholder="请输入工作时长">
    </div>
    <div>
        <input type="submit" value="提交"/>
    </div>
@endsection


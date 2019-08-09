@extends('child')
@section('content')
    <div class="panel panel-default">
        <div class="panel-heading">考勤规则</div>
        <br/>
        <table class="table table-striped table-hover table-responsive">
            <thead>
            <tr>
                <th width="150">考勤规则编号</th>
                <th width="150">考勤规则名</th>
                <th width="200">上午签到规定打卡时间</th>
                <th width="200">上午签到最迟打卡时间</th>
                <th width="200">晚上下班规定打卡时间</th>
                <th width="200">晚上下班早退时间</th>
                <th width="150">工作时长</th>
            </tr>
            </thead>
            <tbody>
            @foreach($rules as $rule)
                <tr>
                    <th scope="row">{{ $rule->id }}</th>
                    <th scope="row">{{$rule->type_name}}</th>
                    <th scope="row">{{$rule->start_time}}</th>
                    <th scope="row">{{$rule->m_latetime}}</th>
                    <th scope="row">{{$rule->e_leavetime}}</th>
                    <th scope="row">{{$rule->end_time}}</th>
                    <th scope="row">{{$rule->workingtime}}</th>
                </tr>
            @endforeach
            <tr>
                <th width="=150"><a href="http://lart.loc.com/index.php/changeA">修改考勤规则</a></th>
                <th width="150"><a href="http://lart.loc.com/index.php/child" >返回首页</a></th>
            </tr>
            </tbody>
        </table>
    </div>

@stop


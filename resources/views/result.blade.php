@extends('child')
@section('content')
    <div class="panel panel-default">
        <div class="panel-heading">考勤结果</div>
        <table class="table table-striped table-hover table-responsive">
            <thead>
            <tr>
                <th width="150">编号</th>
                <th width="150">员工ID</th>
                <th width="150">姓名</th>
                <th width="150">最早打卡时间</th>
                <th width="150">最晚打卡时间</th>
                <th width="150">工作时长</th>
                <th width="150">日期</th>
                <th width="150">上午考勤结果</th>
                <th width="150">下午考勤结果</th>
            </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
        <tr>
            <th width="150"><a href="http://lart.loc.com/index.php/child" >返回首页</a></th>
        </tr>

    </div>

    <!-- 分页  -->
    <div>
        <div class="pull-right">

        </div>

    </div>
@stop


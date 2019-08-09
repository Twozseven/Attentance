@extends('child')
@section('content')
    <div class="panel panel-default">
        <div class="panel-heading">加班信息</div>
        <a href="http://lart.loc.com/index.php/overtime">计算加班情况</a>
        <a href="http://lart.loc.com/index.php/deleteover">删除加班情况</a>
        <br/>
        <table class="table table-striped table-hover table-responsive">
            <thead>
            <tr>
                <th width="150">加班编号</th>
                <th width="150">加班人员id</th>
                <th width="150">加班开始时间</th>
                <th width="150">加班结束时间</th>
                <th width="150">加班时长（小时）</th>
                <th width="150">加班天数（天）</th>
                <th width="150">加班日期</th>
            </tr>
            </thead>
            <tbody>
            @foreach($overs as $over)
                <tr>
                    <th scope="row">{{ $over->id }}</th>
                    <th scope="row">{{$over->over_id}}</th>
                    <th scope="row">{{$over->overstart_time}}</th>
                    <th scope="row">{{$over->overend_time}}</th>
                    <th scope="row">{{$over->over_times}}</th>
                    <th scope="row">{{$over->over_days}}</th>
                    <th scope="row">{{$over->over_date}}</th>
                </tr>
            @endforeach
            <tr>
                <th width="150"><a href="http://lart.loc.com/index.php/child" >返回首页</a></th>
            </tr>
            </tbody>
        </table>
    </div>

    <!-- 分页  -->
    <div>
        <div class="pull-right">
            {{$overs->render()}}
        </div>

    </div>
@stop


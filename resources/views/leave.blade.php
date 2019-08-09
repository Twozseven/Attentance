@extends('child')
@section('content')
    <div class="panel panel-default">
        <div class="panel-heading">假期信息</div>
        <table class="table table-striped table-hover table-responsive">
            <thead>
            <tr>
                <th width="150">ID</th>
                <th width="150">请假者ID</th>
                <th width="150">请假开始时间</th>
                <th width="150">请假结束时间</th>
                <th width="150">请假时长</th>
                <th width="150">请假类型</th>
            </tr>
            </thead>
            <tbody>
            @foreach($leaves as $leave)
                <tr>
                    <th scope="row">{{ $leave->id }}</th>
                    <th scope="row">{{ $leave->leaver_id }}</th>
                    <th scope="row">{{$leave->vocation_begin}}</th>
                    <th scope="row">{{$leave->vocation_end}}</th>
                    <th scope="row">{{$leave->vocation_days}}</th>
                    <th scope="row">{{ $leave->type }}</th>
                </tr>
            @endforeach
            <tr>
                <th width="=150"><a href="http://lart.loc.com/index.php/createleave">添加请假</a></th>
                <th width="150"><a href="http://lart.loc.com/index.php/deleteleave">删除请假</a></th>
                <th width="150"><a href="http://lart.loc.com/index.php/child" >返回首页</a></th>
            </tr>
            </tbody>
        </table>
    </div>

    <!-- 分页  -->
    <div>
        <div class="pull-right">
            {{$leaves->render()}}
        </div>

    </div>
@stop


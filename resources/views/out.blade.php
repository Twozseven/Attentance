@extends('child')
@section('content')
    <div class="panel panel-default">
        <div class="panel-heading">出差信息</div>
        <table class="table table-striped table-hover table-responsive">
            <thead>
            <tr>
                <th width="150">假期编号</th>
                <th width="150">出差人员id</th>
                <th width="150">出差人员姓名</th>
                <th width="150">出差开始时间</th>
                <th width="150">出差结束时间</th>
                <th width="150">出差时长(天)</th>
            </tr>
            </thead>
            <tbody>
            @foreach($outers as $outer)
                <tr>
                    <th scope="row">{{ $outer->id }}</th>
                    <th scope="row">{{$outer->outer_id}}</th>
                    <th scope="row">{{$outer->name}}</th>
                    <th scope="row">{{$outer->out_time}}</th>
                    <th scope="row">{{$outer->back_time}}</th>
                    <th scope="row">{{$outer->out_days}}</th>
                </tr>
            @endforeach
            <tr>
                <th width="=150"><a href="http://lart.loc.com/index.php/createout">添加新的出差记录</a></th>
                <th width="150"><a href="http://lart.loc.com/index.php/deleteout">删除出差记录</a></th>
                <th width="150"><a href="http://lart.loc.com/index.php/child" >返回首页</a></th>
            </tr>
            </tbody>
        </table>
    </div>

    <!-- 分页  -->
    <div>
        <div class="pull-right">
            {{$outers->render()}}
        </div>

    </div>
@stop


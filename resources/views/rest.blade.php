@extends('child')
@section('content')
    <div class="panel panel-default">
        <div class="panel-heading">假期信息</div>
        <table class="table table-striped table-hover table-responsive">
            <thead>
            <tr>
                <th width="150">ID</th>
                <th width="150">假期开始时间</th>
                <th width="150">假期结束时间</th>
                <th width="150">假期名称</th>
            </tr>
            </thead>

            <tbody>
            @foreach($rests as $rest)
                <tr>
                    <th scope="row">{{ $rest->id }}</th>
                    <th scope="row">{{$rest->rest_begin_time}}</th>
                    <th scope="row">{{$rest->rest_end_time}}</th>
                    <th scope="row">{{$rest->rest_type}}</th>

                </tr>
            @endforeach
            <tr>
                <th width="=150"><a href="http://lart.loc.com/index.php/createrest">添加新的假期</a></th>
                <th width="150"><a href="http://lart.loc.com/index.php/deleterest">删除假期</a></th>
                <th width="150"><a href="http://lart.loc.com/index.php/child" >返回首页</a></th>
            </tr>
            </tbody>
        </table>
    </div>

    <!-- 分页  -->
    <div>
        <div class="pull-right">
            {{$rests->render()}}
        </div>

    </div>
@stop


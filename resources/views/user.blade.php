@extends('child')
@section('content')
    <div class="panel panel-default">
        <div class="panel-heading">员工信息</div>
        <table class="table table-striped table-hover table-responsive">
            <thead>
            <tr>
                <th width="150">ID</th>
                <th width="150">姓名</th>
                <th width="150">部门姓名</th>
                <th width="150">考勤类型</th>
            </tr>
            </thead>
            <tbody>
            @foreach($users as $user)
                <tr>
                    <th scope="row">{{ $user->id }}</th>
                    <th scope="row">{{$user->name}}</th>
                    <th scope="row">{{$user->department_name}}</th>
                    <th scope="row">{{$user->rule_type}}</th>
                    <td>


                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        <tr>
            <th width="=150"><a href="http://lart.loc.com/index.php/create">添加新的用户</a></th>
            <th width="150"> <a href="http://lart.loc.com/index.php/update">修改用户信息</a></th>
            <th width="150"><a href="http://lart.loc.com/index.php/deleteview">删除用户</a></th>
            <th width="150"><a href="http://lart.loc.com/index.php/child" >返回首页</a></th>
        </tr>

    </div>

    <!-- 分页  -->
    <div>
        <div class="pull-right">
            {{$users->render()}}
        </div>

    </div>
@stop


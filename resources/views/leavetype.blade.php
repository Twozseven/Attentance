@extends('child')
@section('content')
    <div class="panel panel-default">
        <div class="panel-heading">请假类型信息</div>
        <table class="table table-striped table-hover table-responsive">
            <thead>
            <tr>
                <th width="150">ID</th>
                <th width="150">请假类型名称</th>

            </tr>
            </thead>
            <tbody>
            @foreach($types as $type)
                <tr>
                    <th scope="row">{{ $type->qid }}</th>
                    <th scope="row">{{ $type->type }}</th>
                </tr>
            @endforeach
            <tr>
                <th width="150"><a href="http://lart.loc.com/index.php/child" >返回首页</a></th>
            </tr>
            </tbody>
        </table>
    </div>

@stop


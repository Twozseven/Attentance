
@extends('child')

@section('content')
    <form class="form-horizontal" method="post" action="http://lart.loc.com/index.php/deleteuser" >
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="id" class="col-sm-2 control-label">id</label>
        <input type="text" class="form-control" id="id" name="id" placeholder="请输入被删除用户的id">
        <p >id不能为空</p>
    <div>
        <input type="submit" value="提交"/>
    </div>
@endsection

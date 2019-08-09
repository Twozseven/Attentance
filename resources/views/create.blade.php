
@extends('child')

@section('content')
    <form class="form-horizontal" method="post" action="http://lart.loc.com/index.php/save" >
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="id" class="col-sm-2 control-label">id</label>
        <input type="text" class="form-control" id="id" name="id" placeholder="请输入用户id">
        <p >id不能为空</p>
    </div>
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="name" class="col-sm-2 control-label">姓名</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="请输入用户姓名">
        <P> </P>
    </div>
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="departmentname" class="col-sm-2 control-label">部门名称</label>
        <input type="text" class="form-control" id="departmentname" name="departmentname" placeholder="请输入用户部门姓名">
        <P> </P>
    </div>
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="ruletype" class="col-sm-2 control-label">适用考勤类型</label>
        <input type="text" class="form-control" id="ruletype" name="ruletype" placeholder="请输入用户所适用考勤规则">
    </div>
    <div>
        <input type="submit" value="提交"/>
    </div>
@endsection


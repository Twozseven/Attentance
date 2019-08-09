
@extends('child')

@section('content')
    <form class="form-horizontal" method="post" action="http://lart.loc.com/index.php/changeVocation" >
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="id" class="col-sm-2 control-label">id</label>
        <input type="text" class="form-control" id="id" name="id" placeholder="请输入假期编号">
        <p >编号不能为空</p>
    </div>
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="rest_begin_time" class="col-sm-2 control-label">假期开始时间</label>
        <input type="text" class="form-control" id="rest_begin_time" name="rest_begin_time" placeholder="请输入假期开始时间">
        <P> </P>
    </div>
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="rest_end_time" class="col-sm-2 control-label">假期结束时间</label>
        <input type="text" class="form-control" id="rest_end_time" name="rest_end_time" placeholder="请输入假期结束时间">
        <P> </P>
    </div>
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="rest_type" class="col-sm-2 control-label">假期名称</label>
        <input type="text" class="form-control" id="rest_type" name="rest_type" placeholder="请输入假期名称">
    </div>
    <div>
        <input type="submit" value="提交"/>
    </div>
@endsection


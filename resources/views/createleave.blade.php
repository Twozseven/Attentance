
@extends('child')

@section('content')
    <form class="form-horizontal" method="post" action="http://lart.loc.com/index.php/insertleave" >
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="id" class="col-sm-2 control-label">id</label>
        <input type="text" class="form-control" id="id" name="id" placeholder="请输入请假编号">
        <p >编号不能为空</p>
    </div>
    <div class="form-group">
    <input type="hidden" name="_token" value="{{csrf_token()}}">
    <label for="leaver_id" class="col-sm-2 control-label">leaver_id</label>
    <input type="text" class="form-control" id="leaver_id" name="leaver_id" placeholder="请输入请假人员id">
    </div>
        <p >编号不能为空</p>
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="vocation_begin" class="col-sm-2 control-label">请假开始时间</label>
        <input type="text" class="form-control" id="vocation_begin" name="vocation_begin" placeholder="请输入请假开始时间">
        <P> </P>
    </div>
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="vocation_end" class="col-sm-2 control-label">请假结束时间</label>
        <input type="text" class="form-control" id="vocation_end" name="vocation_end" placeholder="请输入请假结束时间">
        <P> </P>
    </div>
        <div class="form-group">
            <input type="hidden" name="_token" value="{{csrf_token()}}">
            <label for="vocation_days" class="col-sm-2 control-label">请假时长</label>
            <input type="text" class="form-control" id="vocation_days" name="vocation_days" placeholder="请输入请假时长">
            <P> </P>
        </div>
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="type" class="col-sm-2 control-label">请假类别</label>
        <input type="text" class="form-control" id="type" name="type" placeholder="请输入请假类别">
    </div>
    <div>
        <input type="submit" value="提交"/>
    </div>
@endsection


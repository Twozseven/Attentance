
@extends('child')

@section('content')
    <form class="form-horizontal" method="post" action="http://lart.loc.com/index.php/createouter" >
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="id" class="col-sm-2 control-label">id</label>
        <input type="text" class="form-control" id="id" name="id" placeholder="请输入出差编号">
        <p >编号不能为空</p>
    </div>
    <div class="form-group">
    <input type="hidden" name="_token" value="{{csrf_token()}}">
    <label for="outer_id" class="col-sm-2 control-label">出差人员编号</label>
    <input type="text" class="form-control" id="outer_id" name="outer_id" placeholder="请输入出差人员id">
    <P>出差人员编号不能为空</P>
    </div>
    <div class="form-group">
    <input type="hidden" name="_token" value="{{csrf_token()}}">
    <label for="name" class="col-sm-2 control-label">出差人员姓名</label>
    <input type="text" class="form-control" id="name" name="name" placeholder="请输入出差人员姓名">
    <P> </P>
    </div>
    <div class="form-group">
    <input type="hidden" name="_token" value="{{csrf_token()}}">
    <label for="out_time" class="col-sm-2 control-label">出差开始时间</label>
    <input type="text" class="form-control" id="out_time" name="out_time" placeholder="请输入出差开始时间">
    <P> </P>
    </div>
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="back_time" class="col-sm-2 control-label">出差结束时间</label>
        <input type="text" class="form-control" id="back_time" name="rest_end_time" placeholder="请输入出差结束时间">
        <P> </P>
    </div>
    <div class="form-group">
        <input type="hidden" name="_token" value="{{csrf_token()}}">
        <label for="out_days" class="col-sm-2 control-label">出差天数</label>
        <input type="text" class="form-control" id="out_days" name="out_days" placeholder="请输入出差天数">
    </div>
    <div>
        <input type="submit" value="提交"/>
    </div>
@endsection


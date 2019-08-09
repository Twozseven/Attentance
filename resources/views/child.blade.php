
@extends('layout')

@section('title', 'JX考勤系统')

@section('sidebar')
    @parent
    <p>以下是可供选择的功能选项</p>
   <a href="http://lart.loc.com/index.php/showuser">显示人员信息</a>
    <br/><br/>
    <a href="http://lart.loc.com/index.php/showrest">显示假期情况</a>
    <br/><br/>
    <a href="http://lart.loc.com/index.php/showout">显示出差情况</a>
    <br/><br/>
    <a href="http://lart.loc.com/index.php/result">显示考勤情况</a>
    <br/><br/>
    <a href="http://lart.loc.com/index.php/showover">显示加班表</a>
    <br/><br/>
    <a href="http://lart.loc.com/index.php/showleave">显示请假情况</a>
    <br/><br/>
    <a href="http://lart.loc.com/index.php/showleavetype">显示请假类型</a>
    <br/><br/>
   <a href="http://lart.loc.com/index.php/showrule">考勤规则</a>
    <br/><br/>
@endsection

@section('content')
    <p>这里是主体内容，完善中...</p>

@endsection

@section('header')
    <p>锦行科技人员考勤系统</p>
@endsection
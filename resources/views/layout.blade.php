<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>  @yield('title')</title>
    <style>

        .header {
            width: 1500px;
            height: 100px;
            margin:0 auto;
            background: #f5f5f5;
            border: 1px solid #ddd;
        }

        .main {
            width: 1500px;
            height: 700px;
            margin:0 auto;
            margin-top: 15px;
            clear: both;
        }

        .main .sidebar {
            float: left;
            width: 10%;
            height: inherit;
            background: #f5f5f5;
            border: 1px solid #ddd;
        }

        .main .content {
            float: right;
            width: 88%;
            height: inherit;
            background: #f5f5f5;
            border: 1px solid #ddd;
        }

        .footer {
            width: 1500px;
            height: 100px;
            margin:0 auto;
            margin-top: 15px;
            background: #f5f5f5;
            border: 1px solid #ddd;
        }
    </style>
</head>
<body>
<div class="header">
    @section('header')
        头部
    @show
</div>

<div class="main">
    <div class="sidebar">
        @section('sidebar')
            侧边栏：功能选项
        @show
    </div>

    <div class="content">
        {{--声明定义一个视图，不可拓展--}}
        @yield('content','主要内容区域')
    </div>
</div>

<div class="footer">
    {{--展示视图片段，可以被子模板拓展--}}
    @section('footer')
        底部
    @show()
</div>

</body>
</html>

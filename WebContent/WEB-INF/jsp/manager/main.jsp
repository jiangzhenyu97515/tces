<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
     <link rel="stylesheet" href="/MusicTP_Online/css/main.css">
 <script type="text/javascript" src="/MusicTP_Online/script/jquery-3.3.1.min.js"></script>
</head>
<body>
<div style="text-align: center;">
    <h1 style="color: white;font-size: 40px">在线投票系统后台管理<a href="#" style="padding-left:100px;font-size:15pt">退出登录</a></h1>
</div>
<div style="width: 15%; float: left">

    <div class="class_1" style="font-size: 30px"><a href="#">基础信息管理</a> </div>
    <div class="box_1">
        <ul>
            <li ><a target="iframe_a" href="/MusicTP_Online/manager/singerlist">歌手信息维护</a></li>
            <li ><a target="iframe_a" href="/MusicTP_Online/manager/audilist">观众信息维护</a></li>
            <li ><a href="#">管理员信息维护</a></li>
        </ul>
    </div>
    <div class="class_2" style="font-size: 30px"><a href="#">对战平台管理</a></div>
    <div class="box_2">
        <ul>
            <li ><a target="iframe_a" href="/MusicTP_Online/platform/platlist">对战平台信息管理</a></li>
            <li ><a href="#">对战平台数据管理</a></li>
        </ul>

    </div>


</div>
<iframe src="/MusicTP_Online/welcome" name="iframe_a" frameborder="1" width="80%"
        height="800px">

</iframe>
</body>
<script>
    $(".box_1").hide();
    $(".box_2").hide();
    $(".class_1").click(function () {
        if ($(".box_1").is(":visible"))
        {
            $(".box_1").slideUp();
        }
        else {
            $(".box_1").slideDown();
        }
    })
    $(".class_2").click(function () {
        if ($(".box_2").is(":visible"))
        {
            $(".box_2").slideUp();
        }
        else {
            $(".box_2").slideDown();
        }
    })
</script>
</html>
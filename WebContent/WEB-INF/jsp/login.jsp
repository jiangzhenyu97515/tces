<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/MusicTP_Online/css/login.css">
  <script type="text/javascript" src="/MusicTP_Online/script/jquery-3.3.1.min.js"></script>
</head>
<body>
<div class="box">
    <div class="banner">Welcome</div>
<form method="post" action= "/MusicTP_Online/submit" name="login">
    <div class="box_1">用户名：<input type=text style="width: 250px;height: 30px" name='code'></div>  <br>
    <div class="box_1">密&nbsp&nbsp&nbsp码：<input type=password style="width: 250px;height: 30px" name='password'></div>  <br>
    <input type="submit" class="btn" name="cmdOK" value="登  录">
    <input type="reset"  class="btn" name="cmdCancel" value="重  置">
</form>
</div>
</body>
<script>
    $(".box").hide();
    $(".box").fadeIn(2000)
    setTimeout( function(){$(".banner").animate({fontSize: "60"},300).animate({fontSize:"50"},300).animate({fontSize: "60"},300).animate({fontSize:"50"},300);},2000);
</script>
</html>

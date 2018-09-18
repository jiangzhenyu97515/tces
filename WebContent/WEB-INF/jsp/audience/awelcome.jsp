<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/MusicTP_Online/css/awelcome.css">
 <script type="text/javascript" src="/MusicTP_Online/script/jquery-3.3.1.min.js"></script>
</head>
<body>
<div class="hei_1"></div>
<div class="hei_2"></div>
<div class="zi_1">酷暑盛夏</div>
<div class="zi_2">强强对决</div>
<div class="zi_3">谁是歌王</div>
<div class="zi_4">火热开赛</div>
<div class="zi_5">快来为你喜欢的选手加油助威！！</div>
<div class="box_2"><a href="/MusicTP_Online/aplatform/aplatlist">进入OVS助威<div class="box_2_1"> > </div></a></div>
</body>
<script>
    $(".zi_1").hide();
    $(".zi_2").hide();
    $(".zi_3").hide();
    $(".zi_4").hide();
setTimeout(function () {
    $(".hei_1").animate({width:"0"},3000)
},18000);
setTimeout(function () {
    $(".hei_2").animate({width:"0"},3000)
},18000);
    setTimeout(function () {
        $(".zi_5").animate({width:"800"},3000)
    },14000);
    setTimeout(function () {
        $(".zi_4").fadeIn().animate({
            fontSize:"200px",
        },3000).fadeOut(1000);
    },10000);
    setTimeout(function () {
        $(".zi_1").fadeIn(1000)
    },1000);
    setTimeout(function () {
        $(".zi_1").fadeOut(1000)
    },3000);
    setTimeout(function () {
        $(".zi_2").fadeIn(1000)
    },4000);
    setTimeout(function () {
        $(".zi_2").fadeOut(1000)
    },6000);
    setTimeout(function () {
        $(".zi_3").fadeIn(1000)
    },7000);
    setTimeout(function () {
        $(".zi_3").fadeOut(1000)
    },9000);
    setInterval(function () {
        $(".box_2_1").animate({right:"30"},500).animate({right:"10"},500)
    },1000)
</script>
</html>
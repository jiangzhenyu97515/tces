<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="/MusicTP_Online/css/show.css">
    <script type="text/javascript" src="/MusicTP_Online/script/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
 
	   
   function mz(){
	   
	   var id=${aplatform.pid};
	   $.post("/MusicTP_Online/platforml/ticket",{id:id},function(data){
		   var ticket1=data.ticket1;
		   $(".tiao_1").animate({height:ticket1*3},500);
		   $(".zi_1").text(ticket1);
		   var ticket2=data.ticket2;
		   $(".tiao_2").animate({height:ticket2*3},500);
		   $(".zi_2").text(ticket2);
		  
	   })	   
	   }
   setInterval("mz()",500);
	    

   

</script>
</head>
<body style="height: 500px;">
<div class="box">
<div class="box_1">
    <div class="img_1"><img src="${aplatform.simg1}"></div>
    <div class="tiao_1"></div>
    <div class="zi_1">${aplatform.ticket1}</div>
</div>
    <div class="name_1">${aplatform.sname1}</div>
    <div class="vs"><img src="/MusicTP_Online/images/vs.png"height="500" width="500"/></div>
    <div class="name_2">${aplatform.sname2}</div>
    <div class="box_2">
        <div class="img_2"><div class="img_1"><img src="${aplatform.simg2}"></div>
        <div class="tiao_2"></div>
        <div class="zi_2">${aplatform.ticket2}</div>
       
    </div>
</div>
</body>
</html>
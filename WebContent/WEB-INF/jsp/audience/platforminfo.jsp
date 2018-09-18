<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css"> 
       .table {
            border: 1px solid #ddd;
            border-collapse: collapse;
        }

        .table thead tr th,
        .table tbody tr td {
            padding: 8px 12px;
            text-align: center;
            color: #333;
            border: 1px solid #ddd;
            border-collapse: collapse;
            background-color: #fff;
        }
    </style> 
 <script type="text/javascript" src="/MusicTP_Online/script/jquery-3.3.1.min.js"></script>
     <script type="text/javascript">
    
        function addticket1(){
        	 if($("#yt").val()>0){     
        	var yti=${audience.ticket }-1;
        	$("#yt").val(yti);
        	var url2 = "/MusicTP_Online/platform/updateaticket";
        	var param2 =  $("#form2").serialize(); 
    		$.post(url2, param2, function(data) {
    			if(data=="1"){    				
    				alert("投票成功");
    			}else{
    				alert("修改失败");
    			}    			
    		});

        	var adt1=${aplatform.ticket1}+1;
        	$("#tic1").val(adt1);
        	var url = "/MusicTP_Online/platform/updateticket";
        	var param =  $("form").serialize();       			
    		$.post(url, param, function(data) {
    			if(data=="1"){    				
    				alert("投票成功");
    			}else{
    				alert("修改失败");
    			}    			
    		});    	} else{
    			alert("没票啦")
    		} 	
        }
    </script>
<script type="text/javascript">
        function addticket2(){
        	
        if($("#yt").val()>0){
        	var yti=${audience.ticket }-1;
        	$("#yt").val(yti);
        	var url2 = "/MusicTP_Online/platform/updateaticket";
        	var param2 =  $("#form2").serialize(); 
    		$.post(url2, param2, function(data) {
    			if(data=="1"){    				
    				alert("投票成功");
    			}else{
    				alert("修改失败");
    			}    			
    		});
        
        	var adt2=${aplatform.ticket2}+1;
        	$("#tic2").val(adt2);
        	var url = "/MusicTP_Online/platform/updateticket";
        	var param =  $("form").serialize();       			
    		$.post(url, param, function(data) {
    			if(data=="1"){    				
    				alert("投票成功");
    			}else{
    				alert("修改失败");
    			}    			
    		});  } else{
    			alert("没票啦")
    		} 	
        }
</script>

</head>
<body>
<form id="form2">
<div><input id="yt" type="hidden" name="ticket" value="${audience.ticket}"/>余票：${audience.ticket}</div>
<div><input type="hidden" name="id" value="${audience.id}"/></div>
</form>
	<form id="form">
	 <table class="table" cellspacing="0" cellpadding="0">	
    <thead>
        <th>对战者1</th>
        <th>票数1</th>
        <th>投票</th>
        <th>对战者2</th>
        <th>票数2</th> 
        <th>投票</th>     
    </thead>
    <tbody>
     
				<tr>
					<td><input type="hidden" name="sname1" value="${aplatform.sname1}"/>${aplatform.sname1}</td>
					<td><input id="tic1" type="hidden" name="ticket1" value="${aplatform.ticket1}"/>${aplatform.ticket1}</td>
					<td><button onclick="addticket1()">支持</button></td>
					<td><input type="hidden" name="sname2" value="${aplatform.sname2}"/>${aplatform.sname2}</td>
					<td><input id="tic2" type="hidden" name="ticket2" value="${aplatform.ticket2}"/>${aplatform.ticket2}</td>
					<td><button onclick="addticket2()">支持</button></td>				
				</tr>
    </tbody>  
</table>
<input type="hidden" name="pid" value="${aplatform.pid}">
</form>
<a href="/MusicTP_Online/aplatform/aplatlist">返回</a>
</body>
</html>
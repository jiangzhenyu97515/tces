<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
function addplatform(){
	location.href="/MusicTP_Online/platform/add";
}
</script>
<script type="text/javascript">
function del(id){
	var result=confirm("确认删除?");
	if(result){
		var url="/MusicTP_Online/platform/del";
		var param={id:id};
		$.post(url,param,function(data){
			if(data=="1"){
				alert("删除成功");
				location.reload();
			}else{
				alert("删除失败");
			}
		});
	}
}
</script> 
</head>
<body>
	<div style="padding-top:20px;padding-bottom:20px""><input type="button" onclick="addplatform()" value="新增平台"/></div>
	 <table class="table" cellspacing="0" cellpadding="0">
    <thead>
        <th>平台编号</th>   
        <th>平台地址</th>              
        <th>对战者1</th>
        <th>票数1</th>
        <th>对战者2</th>
        <th>票数2</th>  
        <th>显示</th>    
        <th>删除</th>
    </thead>
    <tbody>
        <c:forEach items="${platform}" var="item">
				<tr>
					<td>${item.pid}</td>						
					<td>${item.address}</td>	
					<td>${item.sname1}</td>
					<td>${item.ticket1}</td>	
					<td>${item.sname2}</td>
					<td>${item.ticket2}</td>	
					<td><a href="/MusicTP_Online/platforml/edit/${item.pid}">进入</a></td>						
					<td><a href="#" onclick="del(${item.pid})">删除</a></td>
				</tr>
			</c:forEach>
    </tbody>
</table>
</body>
</html>
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
function addsinger(){
	location.href="/MusicTP_Online/singer/add";
}
</script>
<script type="text/javascript">
function del(id){
	var result=confirm("确认删除?");
	if(result){
		var url="/MusicTP_Online/singer/del";
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
	<div style="padding-top:20px;padding-bottom:20px""><input type="button" onclick="addsinger()" value="新增歌手"/></div>
	 <table class="table" cellspacing="0" cellpadding="0">
    <thead>
        <th>编号</th>     
        <th>歌手姓名</th>              
        <th>性别</th>
        <th>编辑</th>
        <th>删除</th>
    </thead>
    <tbody>
        <c:forEach items="${singers}" var="item">
				<tr>
					<td>${item.id}</td>
					<td>${item.name}</td>						
					<c:choose>
						<c:when test="${item.sex==0}">
							<td>女</td>
						</c:when>
						<c:when test="${item.sex==1}">
							<td>男</td>
						</c:when>
					</c:choose> 			
					<td><a href="/MusicTP_Online/singer/edit/${item.id}">编辑</a></td>
					<td><a href="#"  onclick="del(${item.id})">删除</a></td>
				</tr>
			</c:forEach>
    </tbody>
</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript" src="/MusicTP_Online/script/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
    function add() {
		var url = "/MusicTP_Online/platform/add/do";
		var param = $("form").serialize();
		$.post(url, param, function(data) {
			if(data=="1"){
				location.href="/MusicTP_Online/platform/platlist"
			}else{
				alert("新增失败");
			}
			
		});
	}

</script> 
</head>
<body>
	<form id="form">
		<table>
		    <tr>
				<td>平台地址：</td>
				<td><input type="text" name="address" /></td>
			</tr>
            <tr>
				<td>歌手1姓名：</td>
				<td><select name="sname1" style="width: 160px">
				 <c:forEach items="${singers}" var="item">
						<option value="${item.name}">${item.name}</option>
				</c:forEach>
				</select></td>				
			</tr>
			<tr>
			<td>歌手1照片：</td>
				<td><select name="simg1" style="width: 160px">
				 <c:forEach items="${singers}" var="item">
						<option value="${item.image}">${item.image}</option>
				</c:forEach>
				</select></td>
			</tr>
				<td>歌手2姓名：</td>
				<td><select name="sname2" style="width: 160px">
				 <c:forEach items="${singers}" var="item">
						<option value="${item.name}">${item.name}</option>
				</c:forEach>
				</select></td>
			</tr>
            <tr>
			<td>歌手2照片：</td>
				<td><select name="simg2" style="width: 160px">
				 <c:forEach items="${singers}" var="item">
						<option value="${item.image}">${item.image}</option>
				</c:forEach>
				</select></td>
			</tr>
				<td colspan="2" style="text-align: center"><input type="button" onclick="add()"
					 value="新增平台" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
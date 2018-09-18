<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript" src="/MusicTP_Online/script/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
    function add() {
		var url = "/MusicTP_Online/audience/add/do";
		var param = $("form").serialize();
		$.post(url, param, function(data) {
			if(data=="1"){
				location.href="/MusicTP_Online/manager/audilist"
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
				<td>观众姓名：</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>登录密码：</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td>观众性别：</td>
				<td><select name="sex" style="width: 160px">
						<option value="0">女</option>
						<option value="1">男</option>
				</select>
			<tr>
				<td>观众手机：</td>
				<td><input type="text" name="telephone" /></td>
			</tr>
			<tr>
				<td>观众Email：</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center"><input type="button" onclick="add()"
					 value="新增观众" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript" src="/MusicTP_Online/script/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/MusicTP_Online/script/jquery.form.js"></script>
</head>
<body>
	<form id="form" action="/MusicTP_Online/singer/add/do.action" method="post" enctype="multipart/form-data">
		<table>
		<tr>
				<td>歌手编号：</td>
				<td><input type="text" name="id" /></td>
			</tr>
			<tr>
				<td>歌手照片：</td>
				<td><input type="file" name="file" value="" /></td>
			</tr>
			<tr>
				<td>歌手姓名：</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>歌手性别：</td>
				<td><select name="sex" style="width: 160px">
						<option value="0">女</option>
						<option value="1">男</option>
				</select>
			<tr>
				<td colspan="2" style="text-align: center"><input type="submit" id="btnSubmit"
					 value="新增歌手" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
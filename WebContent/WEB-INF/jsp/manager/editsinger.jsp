<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript" src="/MusicTP_Online/script/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
    $(function(){
    	$("#sex").val(${singer.sex});
    })
</script>  
<script type="text/javascript">
    function update() {
		var url = "/MusicTP_Online/singer/update";
		var param = $("form").serialize();
		$.post(url, param, function(data) {
			if(data=="1"){
				
				location.href="/MusicTP_Online/manager/singerlist"
			}else{
				alert("修改失败");
			}
			
		});
	}

</script> 
</head>
<body>
	<form id="form">
		<table>

			<tr>
				<td>歌手姓名：</td>
				<td><input type="text" name="name" value="${singer.name}"/></td>
			</tr>		
			<tr>
				<td>歌手性别：</td>
				<td><select id="sex" name="sex" style="width: 160px">
						<option value="0">女</option>
						<option value="1">男</option>
				</select>
			<tr>
				<td colspan="2" style="text-align: center"><input type="button" onclick="update()"
					 value="编辑信息" /></td>
			</tr>
		</table>
		<input type="hidden" name="id" value="${singer.id}">
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="/MusicTP_Online/css/audiencelist.css">
    <script type="text/javascript" src="/MusicTP_Online/script/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        function addaudience(){
            location.href="/MusicTP_Online/audience/add";
        }
    </script>
    <script type="text/javascript">
        function del(id){
            var result=confirm("确认删除?");
            if(result){
                var url="/MusicTP_Online/audience/del";
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
<div class="btn_xinzeng_box"><input class="btn_xinzeng" type="button" onclick="addaudience()" value="新增观众"/></div>
<table class="table" cellspacing="0" cellpadding="0">
    <thead>
    <th>观众姓名</th>
    <th>性别</th>
    <th>电话</th>
    <th>邮箱</th>
    <th>编辑</th>
    <th>删除</th>
    </thead>
    <tbody>
    <c:forEach items="${audiences}" var="item">
        <tr>
            <td>${item.name}</td>
            <c:choose>
                <c:when test="${item.sex==0}">
                    <td>女</td>
                </c:when>
                <c:when test="${item.sex==1}">
                   <td>男</td>
                </c:when>
            </c:choose>

            <td>${item.telephone}</td>
            <td>${item.email}</td>
            <td><a href="/MusicTP_Online/audience/edit/${item.id}">编辑</a></td>
            <td><a href="#"  onclick="del(${item.id})">删除</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
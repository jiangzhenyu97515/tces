<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/amain.css">

       <script type="text/javascript" src="/MusicTP_Online/script/jquery-3.3.1.min.js"></script>
	
	<script type="text/javascript">
</script>
<script type="text/javascript">

</script> 
</head>
<body>

<table class="table" cellspacing="0" cellpadding="0">
    <thead>
    <th>平台编号</th>
    <th>平台地址</th>
    <th>对战者1</th>
    <th>票数1</th>
    <th>对战者2</th>
    <th>票数2</th>
    <th>详情</th>
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
            <td><a href="/MusicTP_Online/platform/edit/${item.pid}">去看看</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
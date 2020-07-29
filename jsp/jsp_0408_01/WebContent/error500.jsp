<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %>
<%response.setStatus(200); %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
<style type="text/css">
*{margin: 0;padding: 0;}
div{width:700px;
margin: 50px auto;}
img{width:700px;}
</style>
</head>
<body>
<!-- 오타. 프로그램에러 -->
<div>
<img alt="에러500" src="images/error500.jpg">
<%=exception.getMessage() %>
</div>
</body>
</html>
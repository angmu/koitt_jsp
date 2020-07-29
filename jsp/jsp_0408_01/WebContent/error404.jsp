<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>

<%--아래꺼를 안넣으면 정상페이지로 인식 못하는 경우도 있음 --%>    
<%response.setStatus(200); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지오류(404)</title>
<style type="text/css">
*{margin: 0;padding: 0;}
div{width:700px;
margin: 50px auto;}
img{width:700px;}
</style>
</head>
<body>
<!-- 페이지가 없음 -->
<div>
	<img alt="에러 404페이지" src="images/error404.jpg">
<%-- 	<%=exception.getMessage()%> --%>
</div>
</body>
</html>
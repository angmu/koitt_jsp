<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:forward page="param.jsp?id=admin&pw=1234&name=홍길동"/>
<%-- 	<jsp:param value="admin" name="id"/> --%>
<%-- 	<jsp:param value="1234" name="pw"/> --%>
<!-- 	<!-- 한글은 깨질 수 있다. --> -->
<%-- 	<jsp:param value="홍길동" name="id"/> --%>


<%-- </jsp:forward> --%>
</body>
</html>
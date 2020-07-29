<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	%>
	<h2>주류 및 담배를 판매할수 없습니다</h2>
	<p>당신의 나이는 <%=request.getParameter("age") %> 입니다</p>
	<p>미성년자입니다</p>
</body>
</html>
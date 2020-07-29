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
	//해당되는 섹션만 지움
// 	session.removeAttribute("auth_User");
	//모든 섹션을 지울때
	session.invalidate();
	response.sendRedirect("index.jsp");





%>
</body>
</html>
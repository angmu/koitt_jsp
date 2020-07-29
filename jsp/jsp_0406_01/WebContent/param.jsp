<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	table{width:600px; border-collapse: collapse;}
	td{border:1px solid black;}
</style>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>
	<table>
		<tr>
			<td>아이디</td>
			<td><%=request.getParameter("id") %></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><%=request.getParameter("pw") %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=request.getParameter("name") %></td>
		</tr>
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{width:600px;font-size: 20px;border: 1px solid black;border-collapse: collapse;}
tr,td{border: 1px solid black;}
td:nth-child(1){width:200px;height: 20px;text-align: center;}
td:nth-child(2){width:600px;height: 20px;}
</style>
</head>
<!-- =가 있으면 상관없으나 없으면 ;을 끝에 넣어준다. 아래처럼 안쓰면 post방식일때 한글깨진다리 EUC-KR도 되나 이건 한국서만 안깨진다..만국공용인utf-8로 쓰자..-->
<% request.setCharacterEncoding("utf-8"); %>
<body>
	<table>
		<caption>로그인정보</caption>
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
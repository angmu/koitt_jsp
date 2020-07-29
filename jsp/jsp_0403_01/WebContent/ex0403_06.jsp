<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	<style>
		</style>
	</head>
	<body>
		<%
		request.setCharacterEncoding("utf-8");
		String age= request.getParameter("age");
		int age1= Integer.parseInt(age);
		
		if(age1>20){
			//페이지이동+ 파라미터값으로 age을 넘겨줌 >> 넘긴페이지에서 request.getParameter로 찍힌다
			response.sendRedirect("pass.jsp?age="+age1);
		}else{
			response.sendRedirect("error.jsp?age="+age1);
		}
		
		%>
		
	
	
	</body>
</html>
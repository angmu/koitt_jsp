<%@page import="java.net.URLEncoder"%>
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
		String id= request.getParameter("id");
		String pw= request.getParameter("pw");
		//한글처리 이케! URLEncoder.encode()로 p95
		String name= URLEncoder.encode(request.getParameter("name"),"utf-8") ;
		
		if(id.equals("admin") && pw.equals("777")){
			//페이지이동+ 파라미터값으로 age을 넘겨줌 >> 넘긴페이지에서 request.getParameter로 찍힌다
			response.sendRedirect("login_ok.jsp?id="+id+"&name="+name);
		}else{
			id=null;
			response.sendRedirect("login.jsp?id="+id);
		}
		
		%>
		
</body>
</html>
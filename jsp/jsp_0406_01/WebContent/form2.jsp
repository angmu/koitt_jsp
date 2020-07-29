<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>저장된 쿠키</h2>
	<%request.setCharacterEncoding("utf-8"); %>
	<%
	//쿠키저장
	String name=request.getParameter("c_name");
	String value=request.getParameter("c_value");
	Cookie coo=new Cookie(name,value);
	coo.setMaxAge(1800);
	//이걸 빼뭇다..ㅠㅜ 잊지말것..
	response.addCookie(coo);
	%>
	<%=coo.getName() %>
	<%=coo.getValue() %>	
	<%
	//쿠키읽기

	Cookie[]cooks=request.getCookies();
	for(int i=0;i<cooks.length;i++){
		out.println("쿠키이름:"+cooks[i].getName()+"<br>");
		out.println("쿠키값:"+cooks[i].getValue()+"<br>");
	}
	%>
	<a href="coo_del.jsp">쿠키삭제</a>
</body>
</html>
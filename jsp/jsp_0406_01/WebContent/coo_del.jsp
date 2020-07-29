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
	Cookie[] coo= request.getCookies();
	for(int i=0;i<coo.length;i++){
		coo[i].setMaxAge(0);
		response.addCookie(coo[i]);
	}
	
	%>
	<%
	Cookie []cooread=request.getCookies();
	if(cooread!=null){
		for(int i=0;i<cooread.length;i++){
			out.println(cooread[i].getName()+cooread[i].getValue()+"<br>");
		}
	}
	
	%>
	
</body>
</html>
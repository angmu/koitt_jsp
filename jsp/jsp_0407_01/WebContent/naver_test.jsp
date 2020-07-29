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
//쿠키가 살아있는지 테스트
Cookie [] cooall=request.getCookies();
for(int i=0;i<cooall.length;i++){
	out.println(cooall[i].getName()+"<br>");
}


%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>쿠키3개 저장, 읽기를 클릭하세오</h2>
		<%
									//getName ,getValue
		Cookie cookie = new Cookie("naver_id","admin");
		cookie.setMaxAge(60*30);//1800
		response.addCookie(cookie);
		
		Cookie cookie2= new Cookie("naver_pw","1234");
		cookie2.setMaxAge(1800);
		response.addCookie(cookie2);
		
		Cookie co3= new Cookie("nick_name","koitt");
		co3.setMaxAge(1800);
		response.addCookie(co3);
		%>
		<a href="cookie_get.jsp">쿠키정보읽기</a>
	</body>
</html>
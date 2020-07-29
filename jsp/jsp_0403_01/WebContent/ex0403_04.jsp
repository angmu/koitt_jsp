<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div{width:1600px;
	margin: 0 auto;
	}
	ul{width: 1500px; list-style-type:none;}
	li{width: 250px;font-size: 20px;text-align: center;float: left;border: 1px solid black;}
</style>
</head>
<body>
	<%
	out.println("ContextPath:"+request.getContextPath()+"<br>");
	out.println("서버의이름:"+request.getServerName()+"<br>");
	out.println("포트번호:"+request.getServerPort()+"<br>");
	out.println("method방식:"+request.getMethod()+"<br>");
	out.println("세션객체(현재없음):"+request.getSession()+"<br>");
	out.println("프로토콜:"+request.getProtocol()+"<br>");
	out.println("url 주소:"+request.getRequestURL()+"<br>");
	//url주소에서 포트번호와 서버이름을 빼고 나머지 //파일명을 구하고싶다면 contextpath의 길이를 구해서 substring으로 구할수이따
	out.println("uri 주소:"+request.getRequestURI()+"<br>");
	out.println("쿼리스트링:"+request.getQueryString()+"<br>");
	out.println("ip주소:"+request.getRemoteAddr()); //ipv6의 값으로 반환된다.. ipv4로 변환을 하고싶다면 run>run configration 왼쪽 apach
	
	%>
</body>
</html>
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
		//300개까지 쿠키를 만들수 있기 때문에 배열로 받아야 한다.
		Cookie[] cookies=request.getCookies();
		for(int i=0;i<cookies.length;i++){
			String str=cookies[i].getName();
			if(str.equals("naver_id")){
				out.println("네이버 로그인이 되었습니다."+"<br>");
				out.println("네이버 아이디:"+cookies[i].getValue()+"<br>");
				continue;
			}
			out.println("-------------------------------<br>");
			out.println("<h2>쿠키에 저장되어있는 모든정보</h2>");
			out.println(cookies[i].getName()+" ");
			out.println(cookies[i].getValue()+"<br>");
			
		}
	%><a href="cookie_del.jsp">로그아웃</a>
</body>
</html>
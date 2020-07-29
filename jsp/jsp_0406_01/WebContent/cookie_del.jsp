<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>로그아웃을 하였습니다.</h2>
<%
	Cookie [] cookies= request.getCookies();
	for(int i=0;i<cookies.length;i++){
		if(cookies[i].getName().equals("naver_id")){
			out.println("쿠키삭제완룟<br>");
			cookies[i].setMaxAge(0);//0초, 삭제와 같음,.
			response.addCookie(cookies[i]);
		}
// 		cookies[i].setMaxAge(0);
	}

%><a href="cookie_test.jsp">쿠키확인</a>
</body>
</html>
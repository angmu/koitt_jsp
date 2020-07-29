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
	//저장한 쿠키 정보 삭제 후 index1페이지 이동
	Cookie[] cook_ch =request.getCookies();
	for(int i=0;i<cook_ch.length;i++){
		String check=cook_ch[i].getName();
		if(check.equals("naver_user")){
		cook_ch[i].setMaxAge(0);
		response.addCookie(cook_ch[i]);
		}
		if(check.equals("nick_name")){
		cook_ch[i].setMaxAge(0);
		response.addCookie(cook_ch[i]);
		}
	}
	//쿠키가 살아있는지 테스트 naver_test.jsp
	response.sendRedirect("index_plus.jsp");

%>
</body>
</html>
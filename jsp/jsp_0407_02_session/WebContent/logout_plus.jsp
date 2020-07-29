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
	//저장한 세션 정보 삭제 후 index1페이지 이동
// 	session.invalidate();
	session.setMaxInactiveInterval(0);
	if(request.isRequestedSessionIdValid()){
		out.println("로그아웃되었습니다");
	}else{
		out.println("세션이 남아있서라 ㅇ.ㅇ");
	};
	
	//쿠키가 살아있는지 테스트 naver_test.jsp
	response.sendRedirect("index_plus.jsp");

%>
</body>
</html>
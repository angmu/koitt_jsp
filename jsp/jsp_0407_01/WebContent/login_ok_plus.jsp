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
	String id=request.getParameter("n_id");
	String pw=request.getParameter("n_pw");
	
	//DB로 이동해서 id,pw를 체크하게 됨.
	if(id.equals("admin") && pw.equals("1234")){
		Cookie co1=new Cookie("naver_user","admin");
		co1.setMaxAge(1800);
		response.addCookie(co1);
		
		Cookie co2=new Cookie("nick_name","goldstar");
		co2.setMaxAge(1800);
		response.addCookie(co2);
		response.sendRedirect("index_plus.jsp");
	}else{
		
%>
	<script>
		// \n 엔터의 의미
// 		alert('아이디 혹은 패스워드가 일치하지 않습니다.\n 다시 로그인해주세요');
	</script>

<%		
		response.sendRedirect("index_plus.jsp");
	}
%>
<a href="naver_index2.jsp">다음페이지 이동</a>
</body>
</html>
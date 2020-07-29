<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="mem1" class="com.javalec.ex.Member" scope="session"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	//db에서 id,pw가지고 와서 비교 (자바빈의 아이디와 비번을 가져와서 비교 -여기서는 scope가 page이면 된다.)
	if(id.equals(mem1.getId()) && pw.equals(mem1.getPw())){
		//섹션추가
		session.setAttribute("auth_User", id);
											//자바빈의 닉네임으루 대체
		session.setAttribute("nick_Name", mem1.getNick_Name());
		response.sendRedirect("index.jsp");
	}else{
		
%>
		<script type="text/javascript">
			alert('아이디 혹은 패스워드가 잘못되었습니다. 다시 입력하세요');
			history.back(-1);
		</script>
<%		
// 		response.sendRedirect("login.html");
	}


%>
</body>
</html>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="mem1" class="com.javalec.ex.Member" scope="session"/> 
<jsp:setProperty property="*" name="mem1"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보확인</title>
</head>
<body>
이름:<%=mem1.getName() %><br>
아이디:<%=mem1.getId() %><br>
닉네임:<%=mem1.getNick_Name() %><br>
비번:<%=mem1.getPw() %><br>
성별:<%=mem1.getGender() %><br>
직업:<%=mem1.getJob() %><br>
취미:<%=Arrays.toString(mem1.getHobby()) %><br>

<%
	String[]hob=mem1.getHobby();
	for(int i=0;i<hob.length;i++){
		out.println(hob[i]+" ");
	}
%>
<br>
<a href="index.jsp">가입완료</a>
</body>
</html>
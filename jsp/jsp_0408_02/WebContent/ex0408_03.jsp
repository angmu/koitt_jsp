<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="log" class="com.javalec.ex.Login" scope="page"/> 
<jsp:setProperty property="*" name="log"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름<%=log.getName() %><br>
아이디<%=log.getId() %><br>
비번<%=log.getPw() %><br>
성별<%=log.getGender() %><br>
주소<%=log.getAddress()%><br>

</body>
</html>
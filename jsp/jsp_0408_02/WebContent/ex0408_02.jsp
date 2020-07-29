<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="stu01" class="com.javalec.ex.Student2" scope="page" />
<jsp:setProperty property="*" name="stu01"/>
<%-- 아래꺼를 위로 간단하게 가능 'ㅂ')b --%>
<%-- <jsp:setProperty property="s_number" name="stu01"/> --%>
<%-- <jsp:setProperty property="s_name" name="stu01"/> --%>
<%-- <jsp:setProperty property="s_age" name="stu01"/> --%>
<%-- <jsp:setProperty property="s_grade" name="stu01"/> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- -------------이전방식으로 값 넘겨받기--------------------- -->
<h2>request.getParameter값으로 넘겨받음</h2>
<%
	int s_number=Integer.parseInt(request.getParameter("s_number"));
	String s_name= request.getParameter("s_name");
	int s_age=Integer.parseInt(request.getParameter("s_age"));
	int s_grade=Integer.parseInt(request.getParameter("s_grade"));
%>
	학번:<%=s_number %><br>
	이름:<%=s_name %><br>
	나이:<%=s_age %><br>
	학년:<%=s_grade %><br>



<!-- ---------------Bean을 사용한 값 넘겨받기------------------- -->
----------------------------------------------------------<br>

<h2>jsp Bean으로 값 받기</h2>

학번:<jsp:getProperty property="s_number" name="stu01"/><br>
이름:<jsp:getProperty property="s_name" name="stu01"/><br>
나이:<jsp:getProperty property="s_age" name="stu01"/><br>
학년:<jsp:getProperty property="s_grade" name="stu01"/><br>

<!-- ---------------Bean을 약식표현------------------- -->
----------------------------------------------------------<br>

<h2>약식표현</h2>

학번:<%=stu01.getS_number() %><br>
이름:<%=stu01.getS_name() %><br>
나이:<%=stu01.getS_age() %><br>
학년:<%=stu01.getS_grade() %><br>


</body>
</html>
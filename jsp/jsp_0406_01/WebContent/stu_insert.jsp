<%@page import="jsp_0406_01.Student" %>
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{width:640px; 
margin: 20px auto;border-collapse: collapse;}
table>caption{height: 50px;font-weight: 700;font-size: 20px;}
th,td{
height: 50px;border:1px solid black;width:80px;padding:0 5px;}
div{width:240px;margin: 0 auto;}
button{width:110px;height: 30px;}
a{text-decoration: none; color:black;}
</style>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>
	<%! ArrayList list=new ArrayList();%>
	
	<%--회원추가 --%>
	<%
	String s_num1=request.getParameter("s_num");
	String s_name1=request.getParameter("s_name");
	int kor1=Integer.parseInt(request.getParameter("s_kor"));
	int eng1=Integer.parseInt(request.getParameter("s_eng"));
	int math1=Integer.parseInt(request.getParameter("s_math"));
	
	Student stu=new Student(s_num1,s_name1,kor1,eng1,math1);
	list.add(stu);
	%>
	<table>
		<caption>학생성적처리</caption>
		<tr>
			<th>학번</th>
			<th>이름</th>
			<th>국어</th>
			<th>영어</th>
			<th>수학</th>
			<th>합계</th>
			<th>평균</th>
			<th>등수</th>
		
		</tr>
	
	<%--회원출력 --%>
	<%
	for(int i=0;i<list.size();i++){
	//형변환
	Student stu1=(Student)list.get(i);
	%>
		<tr>
			<!-- 값을 넘겨받음 ㅇ.ㅇ -->
			<td><a href="stu_modify.jsp?s_num=<%=stu1.getS_num() %>&s_name=<%=stu1.getS_name() %>&s_kor=<%=stu1.getS_kor() %>&s_eng=<%=stu1.getS_eng() %>&s_math=<%=stu1.getS_math() %>"><%=stu1.getS_num() %></a></td>
			<td><%=stu1.getS_name() %></td>
			<td><%=stu1.getS_kor() %></td>
			<td><%=stu1.getS_eng() %></td>
			<td><%=stu1.getS_math() %></td>
			<td><%=stu1.getS_total() %></td>
			<td><%=stu1.getS_avg() %></td>
			<td><%=stu1.getRank() %></td>
		
		
<%	
	}
	%>
		
		</tr>
	</table>
	<div>
		<button><a href="stu_inform.html">회원추가</a></button>
		<button><a href="stu_list.html">처음화면으로</a></button>
	</div>
</body>
</html>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
		table{font-size: 20px; border-collapse: collapse;text-align: center;}
		tr,td{border-bottom: 1px solid black;}
		td{height: 20px;}
		td:nth-child(1) {
			width:100px;
		}td:nth-child(2) {
			width:300px;
		}
	</style>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
	<%!
	int sum=0;
	double avg=0;
	
	%>
	<%
	String hak_num=request.getParameter("hak_num");
	String name=request.getParameter("name");
	//내가 봤을때 이게 젤 중요!!
	int k1=Integer.parseInt(request.getParameter("kor"));
	int e1=Integer.parseInt(request.getParameter("eng"));
	int m1=Integer.parseInt(request.getParameter("math"));
	int total=k1+e1+m1;
	double avg=(int)((total/3.0)*10)/10.0;
	int[] arr={1,2,3};
	out.println(Arrays.toString(arr));
	%>
	
	<table>
		<tr>
			<td>학번</td>
			<td><%=hak_num %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=name %></td>
		</tr>
		<tr>
			<td>국어</td>
			<td><%=k1 %>점</td>
		</tr>
		<tr>
			<td>영어</td>
			<td><%=e1 %>점</td>
		</tr>
		<tr>
			<td>수학</td>
			<td><%=m1 %>점</td>
		</tr>
		<tr>
			<td>합계</td>
			<td><%=total %>점</td>
		</tr>
		<tr>
			<td>평균</td>
			<td><%=avg %>점</td>
		</tr>
	</table>
</body>
</html>
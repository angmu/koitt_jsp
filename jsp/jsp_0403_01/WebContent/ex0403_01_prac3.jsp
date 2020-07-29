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
	double multi=1;
	
	%>
	<%
	int s1=Integer.parseInt(request.getParameter("num1"));
	int e1=Integer.parseInt(request.getParameter("num2"));
	%>
	<%! 
	public int sum(int a,int b){
		for(int i=a;i<=b;i++){
			sum+=i;
		}
		return sum;
	}
	
	
	%>
	
	<%!
	public double multi(int a,int b){
		for(int i=a;i<=b;i++){
			multi=multi*i;
		}
		return multi;
	}
	%>
	
	<table>
		<tr>
			<td>범위</td>
			<td>더하기</td>
			<td>곱하기</td>
		</tr>
		<tr>
			<td><%out.println(s1+"에서 "+e1+"까지의 범위");%></td>
			<td><%=sum(s1,e1)%></td>
			<td><%=multi(1,10)%></td>
		</tr>
	</table>
</body>
</html>
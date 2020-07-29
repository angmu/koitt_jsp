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
	<%!
	int sum=0;
	double multi=1;
	
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
			<td>1~10</td>
			<td><%=sum(1,10)%></td>
			<td><%=multi(1,10)%></td>
		</tr>
		<tr>
			<td>1~100</td>
			<td><%=sum(1,100)%></td>
			<td><%=multi(1,100)%></td>
		</tr>
		<tr>
			<td>1~50</td>
			<td><%=sum(1,50)%></td>
			<td><%=multi(1,50)%></td>
		</tr>
	</table>
</body>
</html>
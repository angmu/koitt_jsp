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
	<table>
		<tr>
			<td>단</td>
			<td>계산식</td>
		</tr>
		<% 
		int i=2;int j=1;
		for(i=2;i<4;i++){
			for(j=1;j<=9;j++){
				out.println("<tr>");
				out.println("<td>"+i+"단</td>");
				out.println("<td>"+i+"*"+j+"="+(i*j)+"</td>");
				out.println("</tr>");
			}
		}
		
		%>
	
	</table>
</body>
</html>
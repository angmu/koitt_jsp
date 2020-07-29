<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<style>
		table{font-size: 20px; border-collapse: collapse;}
		tr,td{border-bottom: 1px solid black;}
		
	</style>
	<body>
<!-- html주석		 -->
<%-- jsp주석>html 소스보기에서 나타나지 않음 --%>
		<h1>구구단출력</h1>
		<table>
			
				<%
					int i=0;
					for(i=1;i<=9;i++){
						out.println("<tr>");
						out.println("<td>2*"+i+"="+"</td>");
						out.println("<td>"+(2*i)+"</td>");
						out.println("</tr>");
					}
				
				%>
<!-- 				<td>2*1=</td> -->
<!-- 				<td>2</td> -->
		</table>

		<% 
// 			int i=0;
// 			while(true){
// 				out.println("[구구단 출력]<br>");
// 				i++;
// 				out.println("2*"+i+"="+(2*i)+"<br>");
			
		%>
		
		
<!-- 			<p>===================================</p> -->
		<%
// 		if(i>=9){
// 			break;
// 		  }
// 		}
		%>		
		
	</body>
</html>
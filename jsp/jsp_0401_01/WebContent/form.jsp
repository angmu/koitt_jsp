<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 서블릿의 매핑이름으로 action을 걸음 -->
	<form action="Ex1" method="post" name="post">
	
		<label>아이디</label><input type="text" name="id"><br>
		<input type="submit" value="로그인"><input type="reset" value="취소">
	</form>
</body>
</html>
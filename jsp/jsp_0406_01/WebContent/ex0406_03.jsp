<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#p01{clear: both;}
</style>
</head>
<body>
<p>탑메뉴가 있는부분</p>
<p>네비게이션 포함</p>
<jsp:include page="menu.html"/>
<p id="p01">메인이미지 롤링되어짐</p>
</body>
</html>
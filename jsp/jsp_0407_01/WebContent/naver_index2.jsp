<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link type="text/css" rel="stylesheet" href="css/style.css"> 
	</head>
	<body>
	<%!
	//for문없이도 계속 유지될수 있도록
	String naver_user;
	%>
	<%
		
		//user가 naver_index2.jsp를 바로 접근하면 페이지가 열리지 않도록 함.
		Cookie []cookies= request.getCookies();
		for(int i=0;i<cookies.length;i++){
			String c_check=cookies[i].getName();
			if(c_check.equals("naver_user")){
				naver_user=cookies[i].getValue();
			}
		}
		if(naver_user==null){
			response.sendRedirect("login.html");
		}
	%>
	
	
	<div class="log_box2">
		<div class="log_s_box">
			<span></span>
			<div class="log_xs_box">
			<p><span><a href="#"><%=naver_user %>님</a></span><span><a href="#">내정보</a></span></p>
			<p><span><a href="#">메일</a></span><span><a href="#">쪽지</a></span><span class="btn"><a href="logout.jsp">로그아웃</a></span></p>
			
			</div>
		</div>
		<ul>
			<li><a href="#">알림</a></li>
			<li><a href="#">MY구독</a></li>
			<li><a href="#">메일</a></li>
			<li><a href="#">카페</a></li>
			<li><a href="#">블로그</a></li>
			<li><a href="#">페이</a></li>
		</ul>
	</div>
	</body>
</html>
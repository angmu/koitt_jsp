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
	boolean k=false;
	%>
	
	<%
		
		//user가 naver_index2.jsp를 바로 접근하면 페이지가 열리지 않도록 함.
		Cookie []cookies= request.getCookies();
		for(int i=0;i<cookies.length;i++){
			String c_check=cookies[i].getName();
			//로그인되었을때	
			if(c_check.equals("naver_user")){
				naver_user=cookies[i].getValue();
				k=true;
	%>
			<div class="log_box2">
				<div class="log_s_box">
					<span></span>
					<div class="log_xs_box">
					<p><span><a href="#"><%=naver_user %>님</a></span><span><a href="#">내정보</a></span></p>
					<p><span><a href="#">메일</a></span><span><a href="#">쪽지</a></span><span class="btn"><a href="logout_plus.jsp">로그아웃</a></span></p>
					
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
		<%		
				break;
			}else{
				k=false;
			}
		}
		if(k==false){
			//로그인안되었을때
			%>
			<div id="login_pre_box" class="log_box">
			<p>네이버를 더 안전하고 편리하게 이용해보세오</p>
			<button onclick="location.href='login.html'"><span>NAVER</span> 로그인</button>
			<p><a href="#">아이디·비밀번호 찾기</a><span><a href="#">회원가입</a></span></p>
			</div>
			
	
	<%			
		}
	%>



</body>
</html>
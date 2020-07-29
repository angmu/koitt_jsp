/**
 회원가입을 완료한후에 버튼에 걸어서 로긴이든 아니든 보내버린다유.
 */

//로그인 구현 :>
			function check(){
				if(form.id.value==""){
					alert('아이디를 입력해주세요');
					form.id.focus();
					return false;
				}if(form.id.value!="admin"){
					alert('아이디를 잘못입력하였습니다.');
					form.id.value="";
					form.id.focus();
					return false;
				}
				if(form.pw.value==""){
					alert('비밀번호를 입력해주세요');
					form.pw.focus();
					return false;
				}if(form.pw.value!='12345'){
					alert('비밀번호를 잘못입력하였습니다.');
					form.pw.value="";
					form.pw.focus();
					return false;
				}
				return form.submit();
			}

			/**
var id=prompt('아이디를 입력해주세오');
var pw;
if(id=='admin'){
	pw=prompt('비밀번호를 입력하세오');
	if(pw!='12345'){
		alert('패스워드가 틀렸습니다');
		location.href="login_error.html";
	}else{
		alert('로그인되었습니다');
		location.href="login_ok.html";
	}
}else{
	alert('아이디불일치');
	location.href="login_error.html";
} */
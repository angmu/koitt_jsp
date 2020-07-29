/**
 * 
 */
function check(){
	var id_check=/^[a-zA-Z][a-zA-Z0-9]{2,14}$/;//1번문자는 문자만, 이후 문자는 숫자도 들어와도된다는 뜻 (3자리~총 15자리까지 가능
	var name_check=/^[가-힣]{1,}$/;
	var age_check=/^[0-9]{1,3}$/;
	
	//패스워드>소문자,대문자, 숫자,특수문자를 1개이상 써야한다.
	var pw_check= (/(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*()_+-=|<>?,.~]).{3,10}$/);
	
	//아이디
//	if(join.j_id.value==""){
//		alert('아이디 입력해주세오');
//		join.j_id.focus();
//		return false;
//	}
//	if(!(id_check.test(join.j_id.value))){
//		alert('아이디는 3자리 이상 문자와 숫자만 가능합니다');
//		join.j_id.value="";
//		join.j_id.focus();
//		return false;
//	}
	//비밀번호
	if(join.j_pw.value==""){
		alert('비밀번호를 입력해주세오');
		join.j_pw.focus();
		return false;
	}
	if(!(pw_check.test(join.j_pw.value))){
		alert('비밀번호는 소문자,대문자, 숫자,특수문자를 1개이상 써야합니다');
		join.j_pw.focus();
		return false;
	}
//	if(join.j_pw.value!=join.j_pw2.value){
//		alert('비밀번호확인과 비밀번호가 일치하지 않습니다');
//		join.j_pw2.focus();
//		return false;
//	}
	
	//이름
//	if(join.j_name.value==""){
//		alert('이름을 입력하세오');
//		join.j_name.focus();
//		return false;
//	}
//	if(!(name_check.test(join.j_name.value))){
//		alert('이름 입력이 잘못되었습니다.');
//		join.j_name.focus();
//		return false;
//	}
	//나이
//	if(join.j_age.value==""){
//		alert('나이를 입력하세오');
//		join.j_age.focus();
//		return false;
//	}
//	if(!(age_check.test(join.j_age.value))){
//		alert('나이는 숫자로만 입력이 가능합니다.');
//		join.j_age.focus();
//		return false;
//	}
	
	
	return join.submit();
	
	
	
}
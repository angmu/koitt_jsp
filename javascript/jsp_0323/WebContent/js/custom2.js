/**
 * 
 */
function check(){
	var id_check=/^[a-zA-Z]{4,}$/; 
	var id_age= /^[0-9]+$/;
	var id_spc= /^[a-z~!@#$%^&*()_+|<>?]+$/;
	
	
	if(join.j_id.value==""){
		alert('아이디를 입력하세오');
		join.j_id.focus();
		return false;
	}
	if(!(id_spc.test(join.j_id.value))){
		alert('아이디는 소문자와 특수 문자만가능합니다.');
		join.j_id.value="";
		join.j_id.focus();
		return false;
	}
	
	if(join.j_pw.value==""){
		alert('비밀번호를 입력하세오');
		join.j_pw.focus();
		return false;
	}
	if(!(id_check.test(join.j_id.value))){
		alert('아이디는 4자리 이상 문자만가능합니다.');
		join.j_id.value="";
		join.j_id.focus();
		return false;
	}
	if(join.j_age.value==""){
		alert('나이를 입력하세오');
		join.j_age.focus();
		return false;
	}
	if(!(id_age.test(join.j_age.value))){
		alert('3자리이하 숫자만 입력가능합니다.');
		join.j_age.focus();
		return false;
	}
}
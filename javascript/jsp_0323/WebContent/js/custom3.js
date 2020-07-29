/**
<!-- form
		아이디 패스워드 패스워드확인 이름 나이 전화번호
		성별추가
		아이디-소문자 대문자 가능:4~12
		패스워드와 패스워드 확인이 같은지 비교> 다르면 패스워드 포커스
		패스워드>소문자, 숫자, 특수문자 가능
		이름>한글만(1글자이상)
		나이>숫자만 1~3까지
		전화번호 숫자만가능>8자리 이상 --> 
 */


function check(){
	var id_check = /^[a-zA-Z]{4,12}$/;
	//들어가믄 안되는게 있는지 확인
	var pw_check = /^[a-zA-Z0-9~!@#$%^&*()_+|<>?]+$/;
	//1개라도 들어가있는지 확인
	var pw_check2 = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?]).{3,16}$/;
	
	var pw_check_1= /^(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?]).{3,16}$/;
	var pw_check_2= /^(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?]).{3,16}$/;
	var pw_check_3= /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{3,16}$/;
	var pw_check_4= /^(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?]).{3,16}$/;
	
	
	var age_check = /^[0-9]{1,3}$/;
	var name_check = /^[가-힣]{1,}$/;
	var tel_check = /^[0-9]{8,}$/;
	
	if(form.m_id.value==""){
		alert('아이디를 입력하세오');
		form.m_id.focus();
		return false;
	}
	
	if(!(id_check.test(form.m_id.value))){
		alert('아이디는 대소문자, 4~12자리만 가능함돠');
		form.m_id.value="";
		form.m_id.focus();
		return false;
	}
	if(form.m_pw.value==""){
		alert('비밀번호를 입력하세오');
		form.m_pw.focus();
		return false;
	}
	
	if(!(pw_check.test(form.m_pw.value))){
		alert('비밀번호는 대문자,소문자,특수문자,숫자만 가능합니다');
		form.m_pw.value="";
		form.m_pw.focus();
		return false;
	}
	if(!(pw_check_1.test(form.m_pw.value)||pw_check_2.test(form.m_pw.value)||pw_check_3.test(form.m_pw.value)||pw_check_4.test(form.m_pw.value))){
		alert('비밀번호는 대문자,소문자,특수문자,숫자 중 3종류를 포함해야합니다');
		form.m_pw.value="";
		form.m_pw.focus();
		return false;
	}
	
//	if(!(pw_check2.test(form.m_pw.value))){
//		alert('비밀번호는 대문자,소문자,특수문자,숫자를 각 1개씩 포함해야합니다');
//		form.m_pw.value="";
//		form.m_pw.focus();
//		return false;
//	}
	
	
	
	if(form.m_pw2.value==""){
		alert('비밀번호확인을 입력하세오');
		form.m_pw2.focus();
		return false;
	}
	if(form.m_pw.value!=form.m_pw2.value){
		alert('비밀번호확인이 틀렷읍니다. 다시 입력하세오');
		form.m_pw2.value="";
		form.m_pw2.focus();
		return false;
	}
	//이름
	if(form.m_name.value==""){
		alert('이름를 입력하세오');
		form.m_name.focus();
		return false;
	}
	
	if(!(name_check.test(form.m_name.value))){
		alert('이름은 국문으로만  입력가능합니다.');
		form.m_name.value="";
		form.m_name.focus();
		return false;
	}
	//나이
	if(form.m_age.value==""){
		alert('나이를 입력하세오');
		form.m_age.focus();
		return false;
	}
	
	if(!(age_check.test(form.m_age.value))){
		alert('나이는 숫자로만. 3자리까지 입력가능합니다.');
		form.m_age.value="";
		form.m_age.focus();
		return false;
	}
	//성별 
	if(form.m_gender.value==""){
		alert('성별을 선택하세오');
		form.m_gender.value="m";
		return false;
	}
	
	//전화번호
	if(form.m_tel.value==""){
		alert('전화번호를 입력하세오');
		form.m_tel.focus();
		return false;
	}
	
	if(!(tel_check.test(form.m_tel.value))){
		alert('전화번호는 숫자로만. 8자리이상 입력가능합니다.');
		form.m_tel.value="";
		form.m_tel.focus();
		return false;
	}
	alert('가입완료');
	return form.submit()
}
/**
 * 
 */

function check(){
	
	 //  /정규식의 처음을 뜻함
	//   ^문장의 처음을 뜻함 
	//   $문장의 끝을 뜻함
	//   []대괄호 사이의 문자셋을 비교  
	//   소문자[a-z] 대문자[A-Z] 숫자[0-9]
	//	 {}문자열의 길이 {2,10} 2에서 10까지의 길이를 말함 /{8,} 8자리이상이면 true
	
	//   *[@]{1} 모든 문자를 비교해서 @가 1개 이상있어야 한다.
	//	 문자가 소문자 , 대문자 3자리~12자리까지 입력가능에 대한 정규표현식 
	//	>>  /[a-zA-Z]{3,12}$/
	
	var idcheck = /^[a-zA-Z0-9]{4,12}$/;//아이디 유효성검사
	
	var id_char = /[a-zA-Z]$/;//문자비교구문
	var id_num = /[0-9]$/;//숫자비교구문 
	var id_spc = /[~!@#$%^&()_+|<>?]$/;//특수문자비교 
	var id_kor = /[가-힣]$/; //한글만 들어오도록.
	
	if(!(id_kor.test(join.j_name.value))){
		alert('한글만 입력가능합니다');
		join.j_name.value="";//빈공백으로 반환
		join.j_name.focus();
		return false;
	}
	
	
	//숫자만 입력되도록.. (잘 안된다..>>확인필요>
	//if(!(id_num.test(join.j_id.value))){
	//	alert('숫자만 입력가능합니다');
	//	join.j_id.value="";//빈공백으로 반환
	//	join.j_id.focus();
	//	return false;
	//}
	
	//문자만 입력되도록
	//if(!(id_char.test(join.j_id.value))){
	//	alert('문자만 입력가능합니다');
	//	join.j_id.value="";//빈공백으로 반환
	//	join.j_id.focus();
	//	return false;
	//}
	else{
		alert('아이디 입력완룟');
		return false;
	}
	
	//성별비교
	if(join.gender.value==""){
		alert('성별을 체크해주세오');
		join.gender.value="m";//리턴시 m이 체크됨
		return false;
	}
	if(login.gender.value=='m'){
		alert('남자입니다');
		location.href="https://www.naver.com/";
	}
	if(login.gender.value=='f'){
		alert('여자입니다');
		location.href="https://www.daum.net/";
	}
	//나이비교
	if(login.age.value==""){
		alert('나이를 입력해주세오');
		login.age.focus();
		return false;
	}
	if(login.age.value<18){
		alert('미성년자입니다');
		return false;
	}
	if(login.age.value>=18){
		alert('성인입니다');
		return false;
	}
	if(login.age.value>=18){
		alert('성인입니다');
		return false;
	}
	else{
		alert('숫자만 입력가능합니다.');
		login.age.value="";
		login.age.focus();
		return false;
	}
	//아이디비교
	if(login.id.value==""){
		alert('아이디를 입력해주세오');
		login.id.focus();
		return false;
	}
	if(login.id.value.length<5){
		alert('아이디는 5자리 이상 입력해야합니다.');
		login.id.focus();
		return false;
	}
}
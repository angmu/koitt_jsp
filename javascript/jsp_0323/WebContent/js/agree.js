/**
 * 
 */
function check(){
	var name_ch = /^[가-힣]{1,}$/;
	var id_ch = /^[a-zA-Z0-9_]{4,16}$/;
	var id_ch2 = /^[a-zA-Z]/;
	var pw_ch = /^[a-zA-Z0-9~!@#$%^&*()_+|<>?]{4,16}$/;
	var pw_check2_1 = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[_=+\\\|\[\]{};:\'",.<>\/?]).{4,16}$/;
	//이름
	if(form1.name.value==""){
		alert('이름을 입력하세오');
		form1.name.focus();
		return false;
	}
	if(!(name_ch.test(form1.name.value))){
		alert('이름은 한글로만 입력이 가능합니다');
		form1.name.value="";
		form1.name.focus();
		return false;
	}
	//아이디
	if(form1.userid.value==""){
		alert('아이디를 입력하세오');
		form1.userid.focus();
		return false;
	}
	if(!(id_ch.test(form1.userid.value)&&id_ch2.test(form1.userid.value))){
		alert('아이디는 입력이 잘못되었습니다');
		form1.userid.value="";
		form1.userid.focus();
		return false;
	}
	//비번
	if(form1.password.value==""){
		alert('비밀번호를 입력하세오');
		form1.password.focus();
		return false;
	}
	if(!(pw_ch.test(form1.password.value)&&pw_check2_1.test(form1.password.value))){
		alert('비밀번호 입력이 잘못되었습니다');
		form1.pw_ch.value="";
		form1.pw_ch.focus();
		return false;
	}
	if(form1.confirm.value==""){
		alert('비밀번호확인을 입력하세오');
		form1.confirm.focus();
		return false;
	}
	if(form1.password.value!=form1.confirm.value){
		alert('비밀번호확인이 틀렷읍니다. 다시 입력하세오');
		form1.confirm.value="";
		form1.confirm.focus();
		return false;
	}
	
	 // 라디오 유효성검사
	 var arrRadio = document.getElementsByName("gender");
	 var chk = false;
	 for(var i = 0; i<arrRadio.length;i++){
	  if(arrRadio[i].checked){
	   chk = true;
	  }
	 }
	 
	 if(!chk){
	  alert('체크를 확인해주세요.');
	  return false;
	 }
	 
	 // 체크박스 유효성검사
	 var chk2 = false;
	 for(var i=0; i<form1.hobby.length; i++){
	  if(form1.hobby[i].checked){
	   chk2 = true;
	  }
	 }
	alert('회원가입성공');
	return form1.submit();
}
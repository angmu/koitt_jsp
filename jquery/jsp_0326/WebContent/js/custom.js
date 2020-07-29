$(document).ready(function(){

	$("#l01").click(function(){
		$("#l01").css({"color":"red"});
	});
	$("#l02").click(function(){
		$(this).css({"color":"blue"});
	});
	$("#l03").click(function(){
		$(this).css({"color":"yellow"});
	});
	$("#l04").click(function(){
		$(this).css({"color":"#00FF33"});
	});
	$("#l05").click(function(){
		$(this).css({"color":"green"});
	});
	
	
	//	3-1
//	//p가리기
//	$("#btn01").click(function(){
//		$("p").hide();
//	});
//	//p보이기
//	$("#btn02").click(function(){
//		$("p").show();
//	});
//	//이미지숨기기
//	$("#btn03").click(function(){
//		$("img").hide();
//	});
//	//이미지보이기
//	$("#btn04").click(function(){
//		$("img").show();
//	});
	
});
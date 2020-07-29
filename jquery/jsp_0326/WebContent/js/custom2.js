$(document).ready(function(){
	//정답이 일단 안보이도록 숨김
	$(".ans").hide();
	
	//정답보기 누를시 정답 공개
	$("#q2").mousedown(function(){
		$("#a2").show();
	});
	$("#q2").mouseup(function(){
		$("#a2").hide();
		
	});
	
	//정답보기 오버시 정답 공개
	$("#q1").mouseenter(function(){
		$("#a1").show();
	});
	$("#q1").mouseleave(function(){
		$("#a1").hide();
		
	});
//	//정답보기 클릭시 정답 공개
//	$("#q1").click(function(){
//		$("#a1").show();
//	});
//	$("#q2").click(function(){
//		$("#a2").show();
//		
//	});
	//정답가리기 클릭시 정답 숨김
	$("#h1").click(function(){
		$("#a1").hide();
	});
	$("#h2").click(function(){
		$("#a2").hide();
	});
});
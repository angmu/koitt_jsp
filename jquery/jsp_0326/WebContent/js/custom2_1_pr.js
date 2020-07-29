$(document).ready(function(){
	
	$("img").mouseenter(function(){
		$("p").text("마우스가 위로올라갓다욘");
	});
	$("img").mouseleave(function(){
		$("p").text("마우스가 아래로 내려갓다욘");
	});
	
});
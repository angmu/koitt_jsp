/**
 * 
 */
$(document).ready(function(){
	$("li").mouseenter(function(){
		$(this).css({"background-color":"black"});
		$(this).css({"color":"white"});
		$("p").text($(this).html()+"이(가) 선택되었습니다")
	})
	$("li").mouseleave(function(){
		$(this).css({"background-color":""});
		$(this).css({"color":""});
		$("p").text("")
	})
	
	
});
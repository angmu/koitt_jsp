var n=0;
$(document).ready(function(){
	
	$("div.out").mouseenter(function(){
		$("p:first",this).text("마우스오버 됨");
		$("p:last",this).text(++n);
		if(n>10){
			n=0;
		}
	});
	$("div.out").mouseleave(function(){
		$("p:first",this).text("마우스빠져나감");
		$("p:last",this).text("최종횟수:"+n);
	});
	$("div.out").mousedown(function(){
		$("p:first").hide();
		$("p:last").text("이벤트글자가 사라짐");
		if(n>10){
			n=0;
		}
	});
	$("div.out").mouseup(function(){
		$("p:first").show();
		$("p:last").text("이벤트글자가 사라짐");
	});
	
});

//var n=0;
//$(document).ready(function(){
//	
//	$("div.out").mouseenter(function(){
//		$("p:first",this).text("마우스오버 됨");
//		$("p:last",this).text(++n);
//		if(n>10){
//			n=0;
//		}
//	});
//	$("div.out").mouseleave(function(){
//		$("p:first",this).text("마우스빠져나감");
//		$("p:last",this).text(0);
//		});
//	
//	
//});
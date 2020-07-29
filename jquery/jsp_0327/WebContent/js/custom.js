/**
 * 이미지의 소스를 변경하여 이미지를 변경한다리 :D
 * 
 */
var time=1000;
function radius(obj,left,radius,opacity){
	$(obj).stop().animate({
		"left":left,
		"border-radius":radius,
		"opacity":opacity
	},time);
}
$(document).ready(function(){
	
});
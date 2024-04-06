/// @description calc %
if(is_being_dragged){
	var threshold = x + (0.05 * sprite_width);
	var slideWidth = 0.9 * sprite_width;
	if(mouse_x > threshold){
		var xx = abs(threshold - mouse_x);
		var amount = xx / slideWidth;
		amount = clamp(amount,0,1);
		amount_current = amount*100;
	}else{
		amount_current = 0;
	}
}

if(state == SHOOTING) {
	sprite_index = spr_soldier_shoot;
} else if(grounded) {
	if(xcont = 0) {
		sprite_index = spr_soldier_idle;
	} else {
		sprite_index = spr_soldier_run;	
	}
} else {
	sprite_index = spr_soldier_jump;
	if(yvel < 0) {
		image_index = 0;
	} else {
		image_index = 1;	
	}
}

image_xscale = facing*size;

draw_self();
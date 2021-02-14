if(!chasing and state != SHOOTING) {
	//show_debug_message("patrol change");
	if(xcont = 0) {
		facing = sign(random_range(-20,20));
		state = RUNNING;
		alarm[0] = round(random_range(.25*room_speed,1.5*room_speed));
	} else {
		state = IDLE;	
		alarm[0] = round(random_range(2*room_speed,4*room_speed));
	}
}
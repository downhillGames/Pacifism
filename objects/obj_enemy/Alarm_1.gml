if(grounded and true) { //TODO: change to if true to if chasing so he only shoots when chasing the player
	if(state != SHOOTING) {
		if(random_range(0,1) < shootChance) {
			show_debug_message("ENGAGE:Rooty_Tooty_Point_and_Shooty_0");
			xcont = 0;
			state = SHOOTING;
			alarm[1] = 11.5*room_speed/20;
		} else {
			//show_debug_message("Failed check");
			alarm[1] = 5;	
		}
	} else {
		if(image_index < 13) {
			show_debug_message("PEW!!!");
			newBullet = instance_create_layer(x+(facing*16),y+12,layer,obj_bullet);
			newBullet.xvel*=facing
			newBullet.image_xscale*=facing;
			alarm[1] = 7*room_speed/20;
			//do a bunch of stuff
		} else {
			state = IDLE;
			xcont = 0;
			alarm[1] = room_speed;
		}
	}
}
if(state != SHOOTING) {
	if(grounded and chasing and lineOfSight and random_range(0,1) < shootChance) {
		//show_debug_message("ENGAGE:Rooty_Tooty_Point_and_Shooty_0");
		xcont = 0;
		state = SHOOTING;
		sprite_index = spr_sniper_shoot;
		image_index = 0;
		alarm[1] = 11*room_speed/20;
	} else {
		//show_debug_message("Failed check");
		alarm[1] = 5;	
	}
} else {
	if(image_index < 13) {
		//show_debug_message("PEW!!!");
		newBullet = instance_create_layer(x+(facing*16),y+12+16,layer,obj_laser);
		newBullet.image_angle = aim;
		newBullet.yvel = dsin(aim)*newBullet.xvel*-1;
		newBullet.xvel = dcos(aim)*newBullet.xvel;
		//xvel -= facing*3;
		audio_play_sound(gunshot,2,false);
		alarm[1] = 7*room_speed/20;
		//do a bunch of stuff
	} else {
		state = RUNNING;
		xcont = 0;
		alarm[1] = room_speed;
	}
}
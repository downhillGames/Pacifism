//where is the player?
playx = obj_player.x;
playy = obj_player.y;
playDist = point_distance(x,y,playx,playy);
lineOfSight = !collision_line(x,y,playx,playy,obj_wall,false,false);

//identify whether player detected
if(chasing) {
	aim = point_direction(x,y+16,trackx,tracky);
	if(playDist > escapeRadius or !lineOfSight) {
		if(point_distance(x,y,trackx,tracky) < sprite_width) {
			chasing = false;
			state = IDLE;
			xcont = 0;
			alarm[0] = round(random_range(2*room_speed,4*room_speed));
			trackx = x;
			tracky = y;
		}
	} else {
		trackx = playx;
		tracky = playy;
	}
} else if(sign(x-playx) == facing and abs(x-playx) < abs(y-playy) and lineOfSight) {
	chasing = (playDist < hearingRadius);
	if(chasing) {
		trackx = playx;
		tracky = playy;
	}
} else if (lineOfSight) {
	chasing = (playDist < sightRadius);
	if(chasing) {
		trackx = playx;
		tracky = playy;
	}
} else {
	aim = 90 + (-115*facing);
	trackx = x;
	tracky = y;
}

//read the room
grounded = place_meeting(x,y+1,obj_wall);

//face the player
if(chasing and state != SHOOTING) {
	state = RUNNING;
	facing = sign(trackx-x);	
}


//handle the movement itself
if(!grounded) {
	//get pulled down by gravity
	yvel += grav;	
}

//handle collision with walls
wall_collision();

//final movement
x += xvel;
y += yvel;

//keep within bounds
x = clamp(x,sprite_width/2,room_width-sprite_width/2);
y = clamp(y,sprite_height/2,room_height+sprite_height*4);

//die if falling into a bottomless pit
if(y > room_height + sprite_height) {
	show_debug_message("INTO THE PIT!");
	instance_destroy();
	//global.enemies_in_level -=1
}
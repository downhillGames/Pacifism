//where is the player?
playx = obj_player.x;
playy = obj_player.y;
playDist = point_distance(x,y,playx,playy);
lineOfSight = !collision_line(x,y,playx,playy,obj_wall,false,false)

//identify whether player detected
if(chasing) {
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
	trackx = x;
	tracky = y;
}

//read the room
grounded = place_meeting(x,y+1,obj_wall);
jumping = false;
enemy_environment_detection();

//I ended up leaving the patrolling control up to Alarm 0
if(chasing and state != SHOOTING) {
	state = RUNNING;
	facing = sign(trackx-x);	
}
//determine which way you go
if(grounded) {
	if(state = IDLE) {
		xcont = 0;	
	} else if (state = RUNNING) {
		xcont = facing;
	}
}

//handle the movement itself
if(grounded) {
	//if you hit a wall, turn around
	if(place_meeting(x+facing,y,obj_wall) and !chasing) {
		facing *= -1;	
	}
	//move forward
	xvel += xcont*acceleration;
	//if you are gonna jump, then do it
	if(jumping) {
		yvel -= jumpVel;	
	}
	xvel -= xvel*decceleration;
} else {
	//drift in midair slightly
	xvel += xcont*acceleration/8;
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
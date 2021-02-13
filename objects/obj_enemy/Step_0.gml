//read the room
grounded = place_meeting(x,y+1,obj_wall);
jumping = false;
enemy_environment_detection();

//I ended up leaving the patrolling control up to Alarm 0
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
	if(place_meeting(x+facing,y,obj_wall)) {
		facing *= -1;	
	}
	//move forward
	xvel = xcont*runSpeed;
	//if you are gonna jump, then do it
	if(jumping) {
		yvel -= jumpVel;	
	}
} else {
	//drift in midair slightly if you lost momentum somewhere
	if(abs(xvel) < runSpeed) {
		xvel = xcont*runSpeed/4;
	}
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
}
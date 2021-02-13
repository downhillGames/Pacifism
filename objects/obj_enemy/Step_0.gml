//read the room
grounded = place_meeting(x,y+1,obj_wall);
jumping = false;
enemy_environment_detection();

//temproary code to test movement, in the future replace with navigation control
xcont = facing;

//handle the movement itself
if(grounded) {
	//move forward
	xvel = xcont*runSpeed;
	//if you hit a wall, turn around
	if(place_meeting(x+facing,y,obj_wall)) {
		facing *= -1;	
	}
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
if(y > room_height + sprite_height) {
	show_debug_message("INTO THE PIT!");
	instance_destroy();
}
//checks to see if the player is about to hit a wall, then increments then by .1 pixels until they reach it
function wall_collision() {
	if((place_meeting(x+xvel,y,obj_wall))) {
		while(!place_meeting(x+.1*sign(xvel),y,obj_wall)) {
			x+=.1*sign(xvel);
		}
		xvel = 0;
	}
	if(place_meeting(x,y+yvel,obj_wall)) {
		while(!place_meeting(x,y+.1*sign(yvel),obj_wall)) {
			y+=.1*sign(yvel);
		}
		yvel = 0;
	}
	wall_collision_backup();
}

//sometimes, decimals get messy and things get stuck in walls, this is a safty net that pushes things out of walls
function wall_collision_backup() {
	offset = .1;
	while(place_meeting(x,y,obj_wall)) {
		if(!place_meeting(x+offset,y,obj_wall)) {
			x+=offset;
		} else if(!place_meeting(x-offset,y,obj_wall)) {
			x-=offset;
		} else if(!place_meeting(x,y+offset,obj_wall)) {
			y+=offset;
		} else if(!place_meeting(x,y-offset,obj_wall)) {
			y-=offset;
		}
		offset+=.1;
	}
}
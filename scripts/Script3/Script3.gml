//checks to see if the player is about to hit a wall, then increments then by .1 pixels until they reach it
function chain_collision() {
	if(place_meeting(x,y+yvel,obj_chains)) {
		while(!place_meeting(x,y+.1*sign(yvel),obj_chains)) {
			y+=.1*sign(yvel);
		}
		yvel = 0;
	}
	chain_collision_backup();
}

//sometimes, decimals get messy and things get stuck in walls, this is a safty net that pushes things out of walls
function chain_collision_backup() {
	offset = .1;
	while(place_meeting(x,y,obj_chains)) {
		if(!place_meeting(x,y+offset,obj_chains)) {
			y+=offset;
		} else if(!place_meeting(x,y-offset,obj_chains)) {
			y-=offset;
		}
		offset+=.1;
	}
}
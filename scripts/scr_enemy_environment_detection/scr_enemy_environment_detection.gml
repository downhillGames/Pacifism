//give them some degree of intelligence telling them when to jump
//this is very incomplete at the moment without hazards to avoid or players to chase
function enemy_environment_detection(){
	//detects to see if there's a gap in the ground ahead
	//jump over pits at least 2 block deep, in the future this will be conditional on whether the player is above or below
	if(state == RUNNING and !place_meeting(x+(20*xcont),y+1+sprite_height,obj_wall)) {
		if(!chasing) {
			facing *= -1;	
		} else if (tracky <= y) {
			jumping = true;
		}
	}
	
	//if there's a wall between you and the player, hop over it
	if(chasing and state == RUNNING and place_meeting(x+(64*xcont),y,obj_wall)) {
		if(tracky <= y) {
			jumping = true;	
		}
	}
	
	//if the player is above you, jump to them
	if(chasing and state == RUNNING and random_range(0,(y-tracky)/abs(x-trackx)) > .75) {//abs(x-playx) < y-playy and 
		jumping = true;	
	}
}
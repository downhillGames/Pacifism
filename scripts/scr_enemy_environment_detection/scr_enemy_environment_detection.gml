//give them some degree of intelligence telling them when to jump
//this is very incomplete at the moment without hazards to avoid or players to chase
function enemy_environment_detection(){
	//detects to see if there's a gap in the ground ahead
	//jump over pits at least 2 block deep, in the future this will be conditional on whether the player is above or below
	if(state == RUNNING and !place_meeting(x+(2*runSpeed*facing),y+1+sprite_height,obj_wall)) {
		if(!chasing) {
			facing *= -1;	
		} else if (true) {
			jumping = true;
		}
	}
}
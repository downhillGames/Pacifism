key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_up);
key_roll = keyboard_check_pressed(vk_down);
grounded = place_meeting(x,y+1,obj_wall);

//React to inputs
if(!intangible) {
	move = key_left + key_right;
	if(sign(move) != 0) {
		image_xscale = size * sign(move);
	}
	if(sign(move) != sign(xvel)) {
		xvel -= decceleration*xvel/(16-(grounded*15));
	}
	if(abs(xvel+move*acceleration) > movespeed) {
		if(grounded or abs(xvel) < movespeed) {
			xvel = sign(xvel) * movespeed;
		}
	} else {
		xvel += move * acceleration;
	}
}

if (yvel < 10) yvel += grav;

//chain_collision()
wall_collision()

//check if player hits door
if (place_meeting(x+xvel+1,y,obj_exitDoor)){
	//if no enemies are left, go to win
	//if not, acts like wall
	if (global.enemies_in_level <= 0){
		global.enemies_in_level = 0
		global.player_health = 225
		global.bombs_in_level = 0
		room_goto(rm_win);
	}
	else {
		x -= 1;
		xvel = 0;
	}		
}

if(intangible) {
	sprite_index = spr_monk_spin;
} else {
	sprite_index = monk_walk_right;
}

if (grounded)
{
	if(!intangible and key_roll) {
		xvel = sign(image_xscale)*rollSpeed
		intangible = true;
		alarm[1] = 15;
	}
	if(key_jump) {
		intangible = false;
		yvel = key_jump * -jumpspeed
	}
}

if xvel == 0 
	image_speed = 0
else
	image_speed = 1

x += xvel;
y += yvel;

if(y > room_height + sprite_height) {
	x = spawn_point_x
	y = spawn_point_y
	global.player_health -= 20
}
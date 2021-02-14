key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);
key_roll = keyboard_check_pressed(vk_down);
grounded = place_meeting(x,y+1,obj_wall);

//React to inputs
if(!intangible) {
	move = key_left + key_right;
	if(sign(move) != 0) {
		image_xscale = size * sign(move);
	}
	if(grounded and sign(move) != sign(xvel)) {
		xvel -= decceleration*xvel;
	}
	if(abs(xvel+move*acceleration) > movespeed) {
		if(abs(xvel) < movespeed) {
			xvel = sign(xvel) * movespeed;
		}
	} else {
		xvel += move * acceleration;
	}
}
/*
if (move != last_direction && move!= 0)
	last_direction = move

	if last_direction == 1
		sprite_index =	monk_walk_right;
	else
		sprite_index = monk_walk_left;
*/
if (yvel < 10) yvel += grav;

if (grounded)
{
    yvel = key_jump * -jumpspeed
}


wall_collision()

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
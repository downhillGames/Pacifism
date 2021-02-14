key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);

//React to inputs
move = key_left + key_right;
xvel = move * movespeed;

if (move != last_direction && move!= 0)
	last_direction = move

	if last_direction == 1
		sprite_index =	monk_walk_right;
	else
		sprite_index = monk_walk_left;

if (yvel < 10) yvel += grav;

if (place_meeting(x,y+1,obj_wall) || place_meeting(x,y+1,obj_spike))
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
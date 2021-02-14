var pixelsPerSecond = 250;
var timePassed = delta_time / 1000000;
var pixelsThisFrame = pixelsPerSecond * timePassed;
audio_listener_set_position(0,x,y, 0);

key_jump = keyboard_check(vk_space);
//xDir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
//yDir = keyboard_check(ord("S")) - keyboard_check(ord("W"));


xDir = keyboard_check(vk_right) - keyboard_check(vk_left);
yDir = grav + vsp

if (place_meeting(x,y+1,obj_wall) && key_jump){
	vsp = -7
	alarm[0] = room_speed / 5
}
	
	
if (xDir != last_direction && xDir!= 0)
	last_direction = xDir

	if last_direction == 1
		sprite_index =	monk_walk_right;
	else
		sprite_index = monk_walk_left;
	
if (xDir !=0 || yDir != 0){

	var dir = point_direction(0,0,xDir, yDir);
	
	
	var movedSuccessfully = false;
	
	for (var i = 0; i <= 80; i += 10) {
		for (var n = -1; n <= 1; n += 2){
			
			var modifiedDir = (n*i) + dir;
			
			var xTarget = x + lengthdir_x(pixelsThisFrame, modifiedDir);
			var yTarget = y + lengthdir_y(pixelsThisFrame, modifiedDir);

			if (place_meeting(xTarget, y, obj_wall) || place_meeting(xTarget, y, obj_enemy) ){
				xTarget = x + 0;
			}
			if (place_meeting(x, yTarget, obj_wall)){
				yTarget = y + 0;
			}
	
			if( xTarget == x && yTarget == y ) {

			    image_speed = 0;
			    image_index = 0; //Ensures that the animation is on the first frame of the animation

			} else {

			    image_speed = 1; //Sets to 100% speed of the room speed

			}			
			//if (place_free(xTarget, yTarget)){
				x = xTarget
				y = yTarget
				wall_collision_backup()
				movedSuccessfully = true;
				break;
			//}
	}
		
	if (movedSuccessfully){
		break;
		}
	}
}
else{
	image_speed = 0;
	image_index = 0;
}
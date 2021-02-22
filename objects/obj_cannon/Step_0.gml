if(triggered) {
	dir = point_direction(x, y, obj_player.x , obj_player.y);
	image_angle += sin(degtorad(dir - image_angle)) * rspeed;
} else if(!collision_line(x,y,obj_player.x,obj_player.y,obj_wall,false,true)) {
	triggered = true;
	image_speed = 1;
	alarm[0] = room_speed * 1.7
}
if(!triggered and image_index == 1) {
	image_index = 0;
	image_speed = 0;
}
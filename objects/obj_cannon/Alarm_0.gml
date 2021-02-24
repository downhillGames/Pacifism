
randomize();

rand = random_range(-5,5)
//audio_play_sound(cannon_fire, 1, 0)
audio_play_sound_at(cannon_fire, x, y, 0, 50, 100, 0.25, false, 1);


var new_bomb = instance_create_depth(x+ lengthdir_x(cannonDistance, image_angle + cannonAngle),y + lengthdir_y(cannonDistance, image_angle + cannonAngle),0,obj_bomb)
//new_bomb.speed = 5



new_bomb.direction = point_direction(x+ lengthdir_x(cannonDistance, image_angle + cannonAngle),y + lengthdir_y(cannonDistance, image_angle + cannonAngle),obj_player.x , obj_player.y) + rand

if ((new_bomb.direction >= 0 && new_bomb.direction <= 90) || (new_bomb.direction >= 270 )){
	randomize();
	rand2 = random_range(7,12) 
	}
else if (new_bomb.direction  > 90 && new_bomb.direction < 270){
	randomize();
	rand2 = random_range(7,12) * -1
}

if (new_bomb.direction >= 180){
	randomize();
	rand3 = random_range(1,5) 
	}
else if (new_bomb.direction  < 180){
	randomize();
	rand3 = random_range(1,5) * -1
}

new_bomb.xspd = rand2;
new_bomb.yspd = rand3;
show_debug_message(rand2)
new_bomb.image_angle = obj_bomb.direction

if(collision_line(x,y,obj_player.x,obj_player.y,obj_wall,false,true)) {
	triggered = false;
	image_index = 0
} else {
	alarm[0] = room_speed * 2
}



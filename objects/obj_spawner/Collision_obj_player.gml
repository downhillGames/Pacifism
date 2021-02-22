if (sprite_index == spr_spawner_closed && cooldown == 0){
	sprite_index = spr_spawner_open
	alarm[0] = room_speed
	alarm[1] = room_speed * 1.7
}
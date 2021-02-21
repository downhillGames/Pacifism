image_speed = 1
alarm[0] = room_speed * .3;

if (image_index > image_number - 13 && can_hurt){
	if(!obj_player.intangible) {
		global.player_health -= 10
		if (!audio_is_playing(player_hurt))
			audio_play_sound(player_hurt, 1, 0)
	}
	can_hurt = false
	alarm[1] = room_speed / 5
}
	
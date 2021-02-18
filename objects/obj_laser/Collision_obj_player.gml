if(!obj_player.intangible) {
	global.player_health -= 10
	if (!audio_is_playing(player_hurt))
		audio_play_sound(player_hurt, 1, 0)
}
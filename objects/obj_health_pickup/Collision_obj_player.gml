if(!obj_player.intangible) {
	if global.player_health <= 175{
		global.player_health += 50
	}
	else{
		global.player_health = 225
	}
	
	//if (!audio_is_playing(player_hurt))
		//audio_play_sound(player_hurt, 1, 0)
}
instance_destroy(self);
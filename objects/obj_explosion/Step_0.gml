if cooldown > 0
	cooldown -= 1



var1 = instance_place(x,y,obj_enemy) {
	with var1 {
	instance_destroy()
	//global.enemies_in_level -= 1
	 }
}

var1 = instance_place(x,y,obj_spawner) {
	with var1 {
	instance_destroy()
	}
}

var1 = instance_place(x,y,obj_player) {
	with var1 {
		if(!obj_player.intangible) {
			global.player_health -= 3
			if (!audio_is_playing(player_hurt))
				audio_play_sound(player_hurt, 1, 0)
		}
	}
}




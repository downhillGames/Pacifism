if(place_meeting(x,y,obj_wall)) {
	speed = 0
	image_speed = 1;
	if !fuse_played {
		audio_play_sound(fuse, 1, 0)
		fuse_played = true
	}
}
if (image_index > image_number - 1){
	global.bombs_in_level -=1
	audio_play_sound(explosion, 1, 0)
	instance_destroy()
}

if (image_index > 4){
		var1 = instance_place(x,y,obj_enemy) {
		    with var1 {
		        instance_destroy()
		        }
		}
}

if (image_index > 4){
		var1 = instance_place(x,y,obj_player) {
		    with var1 {
		        if(!obj_player.intangible) {
					global.player_health -= 10
				}
		    }
		}
}
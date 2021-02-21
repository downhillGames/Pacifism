
if (image_index > image_number - 1){
	global.bombs_in_level -=1
	audio_play_sound(explosion, 1, 0)
	instance_destroy()
}

if (image_index > 5){
		var1 = instance_place(x,y,obj_enemy) {
		    with var1 {
		        instance_destroy()
				global.enemies_in_level -= 1
		        }
		}
}

if (image_index > 5){
		var1 = instance_place(x,y,obj_player) {
		    with var1 {
		        if(!obj_player.intangible) {
					global.player_health -= 1
					if (!audio_is_playing(player_hurt))
						audio_play_sound(player_hurt, 1, 0)
			
				}
			}
		}
}

//apply gravity 
yspd += grav;

//collide on x-axis
if place_meeting(x+xspd,y,obj_wall){
	while !place_meeting(x+sign(xspd),y,obj_wall){
		x+=sign(xspd)
	}
	//bounce
	xspd *= -bouncedecay;
	randomize();
	rand = random_range(0,2) 
	alarm[1] = room_speed * rand
}
//collide on y-axis
if place_meeting(x,y+yspd,obj_wall){
	while !place_meeting(x,y+sign(yspd),obj_wall){
		y+=sign(yspd)
	}
	//bounce
	yspd *= -bouncedecay;
	randomize();
	rand = random_range(0,2) 
	alarm[1] = room_speed * rand
}

if place_meeting(x,y+1,obj_wall){
	xspd *= 0.99
}

x+=xspd
y+=yspd


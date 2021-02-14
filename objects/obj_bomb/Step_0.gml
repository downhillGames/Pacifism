if(place_meeting(x,y,obj_wall)) {
	speed = 0
	image_speed = 1;
}
if (image_index > image_number - 1){
	global.bombs_in_level -=1
	instance_destroy()
}

if (image_index > 4){
		var1 = instance_place(x,y,obj_enemy) {
		    with var1 {
		        instance_destroy()
		        }
		}
}
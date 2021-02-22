if (can_hurt){
	instance_destroy(other)
	can_hurt = false
	alarm[1] = room_speed / 5
}
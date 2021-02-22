if (global.enemies_in_level <= 0 ){
	room_goto(rm_win);
	global.enemies_in_level = 0
	global.player_health = 225
	global.bombs_in_level = 0
}

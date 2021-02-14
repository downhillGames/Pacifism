draw_set_color(c_white);
draw_text(0,30, string(global.enemies_in_level))
draw_text(0,40, string(global.bombs_in_level))

draw_line(25, 5, 250, 5);
draw_line(25, 5, 25, 20);

draw_line(250, 5, 250, 20);
draw_line(25, 20, 250, 20);


for (i=1; i < global.player_health; i++){
	draw_set_color(c_red);
	draw_line(i+25, 6, i+25, 19);
}

//goes to lose room if player dies
if (global.player_health <= 0){
	room_goto(rm_lose);
}
//goes to win rome if all enemies in level die
if (global.enemies_in_level <= 0){
	room_goto(rm_win);
}
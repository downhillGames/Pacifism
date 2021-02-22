draw_set_color(c_white);
draw_set_font(UI_font)
draw_text(0,30, string(global.enemies_in_level) + " Enemies Left")


draw_line(0, 5, 225, 5);
draw_line(0, 5, 0, 20);

draw_line(225, 5, 225, 20);
draw_line(0, 20, 225, 20);


for (i=1; i < global.player_health; i++){
	draw_set_color(c_red);
	draw_line(i+0, 6, i+0, 19);
}
//goes to lose room if player dies
if (global.player_health <= 0){
	global.enemies_in_level = 0
	global.player_health = 225
	global.bombs_in_level = 0
	room_goto(rm_lose);

}
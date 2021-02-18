if(state != SHOOTING) {
	image_index = 0;
}
if(chasing) {
	draw_line(x,y+16,trackx,tracky);	
}
image_xscale = facing*size;
draw_self();
draw_sprite_ext(spr_sniper_gun,image_index,x,y+16,size,size*facing,aim,c_white,1);
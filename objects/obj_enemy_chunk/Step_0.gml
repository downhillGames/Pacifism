yvel += grav;
image_angle += rot;
x+=xvel
y+=yvel;
if(y > room_height+sprite_height*2) {
	instance_destroy();	
}
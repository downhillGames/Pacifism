last_direction = -1
size = 2;
image_xscale = size*sign(image_xscale);
image_yscale = size;
grav = 0.45;
xvel = 0;
yvel = 0;
jumpspeed = 14;
movespeed = 5.5;
acceleration = 1.5;
decceleration = .3;
grounded = place_meeting(x,y+1,obj_wall);

//dodge rolling
rollSpeed = 8;
intangible = false;

spawn_point_x = x
spawn_point_y = y

var new_bomb = instance_create_depth(x,y,0,obj_bomb)
randomize();
new_bomb.speed = 5
rand = random_range(-5,5)

var _c = dcos(image_angle);
var _s = dsin(image_angle);
x1 = x + 30 * cos (degtorad(image_angle))
y1 = y + 30 * sin (degtorad(image_angle))

new_bomb.direction = point_direction(x1,y1,obj_player.x , obj_player.y) + rand;
new_bomb.image_angle = obj_bomb.direction
alarm[0] = room_speed / 1.3




//var new_enemy = instance_create_depth(x,y,0,obj_enemy)
newEnemy = instance_create_layer(x,y,layer_get_id("Instances"),obj_enemy);
newEnemy.facing = sign(obj_player.x-newEnemy.x);
audio_play_sound_at(snd_spawn, x, y, 0, 0, 0, 0.25, false, 1);
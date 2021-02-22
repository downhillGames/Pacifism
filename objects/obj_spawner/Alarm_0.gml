//var new_enemy = instance_create_depth(x,y,0,obj_enemy)
instance_create_layer(x,y,layer_get_id("Instances"),obj_enemy);
audio_play_sound(snd_spawn, 1, 0)
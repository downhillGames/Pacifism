for(i = 0; i<7; i++) {
	chunk = instance_create_layer(x,y,layer,obj_enemy_chunk);
	chunk.sprite_index = asset_get_index("spr_enemy_dead_"+string(i));
}
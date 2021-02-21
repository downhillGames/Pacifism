if(place_meeting(x,y-distThresh,obj_player)) {
    if(instance_place(x,y-distThresh,obj_player).yvel > spdThresh) {
        instance_change(obj_manhole_spin,true);
    }
}
if(place_meeting(x,y+distThresh,obj_player)) {
    if(instance_place(x,y+distThresh,obj_player).yvel < -spdThresh) {
        instance_change(obj_manhole_spin,true);
    }
}
image_index = 0;
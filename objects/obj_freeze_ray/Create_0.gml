/// @description set self destruct timer
alarm[0] = game_get_speed(gamespeed_fps) * 1;
bullet = instance_create_layer(x,y,"Instances", obj_bullet);
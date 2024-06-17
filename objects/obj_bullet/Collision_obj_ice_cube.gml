/// @description reset timer
instance_destroy();
other.destroy_timer = game_get_speed(gamespeed_fps) * 3;
other.image_index = sprite_get_number(spr_frozenblock) -1;
other.image_speed = 0;
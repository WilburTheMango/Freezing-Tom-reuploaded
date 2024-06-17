/// @description Insert description here
// You can write your code in this editor
if (destroy_timer == 0) {
	target.frozen = false;
	target.image_speed = target_img_spd;
	instance_destroy();	
} else if (destroy_timer == game_get_speed(gamespeed_fps) * 2) {
	image_index = sprite_get_number(spr_frozenblock);
	image_speed = -1;
}
destroy_timer -= 1;
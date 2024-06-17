/// @description Insert description here
// You can write your code in this editor
if (collision_rectangle(x-5, y-3, x+5,y, obj_player, false, false)) {
	image_index = 1;
	instance_destroy(obj_bird);
	instance_destroy(obj_enemy);
}

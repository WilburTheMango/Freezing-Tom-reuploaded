/// @description Insert description here
if((obj_teleport.teleport_Reached == true) && (playedOnce == false)){
	audio_play_sound(good1, 0, false);
	instance_create_depth(x, y, -9999, obj_portalTransition);
	playedOnce = true;
	obj_teleport.teleport_Reached = false;
	part_particles_clear(_ps);
	part_system_destroy(_ps);
}

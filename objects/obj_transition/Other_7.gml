/// @description Transport Player
// Transports the player when the animation ends

	room_restart();
	instance_destroy(obj_transition);
	obj_player.sprite_index = spr_player;
	obj_player.x = obj_playerSpawnLocation.spawn_x;
	obj_player.y = obj_playerSpawnLocation.spawn_y;
	obj_player.state = "move";
	obj_player.runOnce = false;
	obj_player.hp = 3;
		
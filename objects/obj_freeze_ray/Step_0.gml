/// @description
if (instance_exists(bullet)) {
	if (sprite_index == spr_freezegun_left) {
		x = obj_player.x - 4;
		y = obj_player.y - 4;
		bullet.dir = "left";
	} else if (sprite_index == spr_freezegun_right) {
		x = obj_player.x + 4;
		y = obj_player.y - 4;
		bullet.dir = "right";
	} else if (sprite_index == spr_freezegun_up) {
		x = obj_player.x - 2;
		y = obj_player.y - 7;
		bullet.dir = "up";
	} else if (sprite_index == spr_freezegun_down) {
		x = obj_player.x - 2;
		y = obj_player.y + 1;
		bullet.dir = "down";
	} // fix bullet dir being only set if bullet exists, and ALWAYS set xy according to freezegun
} else {
	if (sprite_index == spr_freezegun_left) {
		x = obj_player.x - 4;
		y = obj_player.y - 4;

	} else if (sprite_index == spr_freezegun_right) {
		x = obj_player.x + 4;
		y = obj_player.y - 4;

	} else if (sprite_index == spr_freezegun_up) {
		x = obj_player.x - 2;
		y = obj_player.y - 7;

	} else if (sprite_index == spr_freezegun_down) {
		x = obj_player.x - 2;
		y = obj_player.y + 1;

	}
}
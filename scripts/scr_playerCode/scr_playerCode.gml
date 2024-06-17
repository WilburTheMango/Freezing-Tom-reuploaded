// main functions for player go here, if it isnt a player or player related, please dont put here.

function keyboardLogic(){
	right = (keyboard_check(vk_right) || keyboard_check(vk_numpad6));
	left = (keyboard_check(vk_left) || keyboard_check(vk_numpad4));
	up = (keyboard_check(vk_up) || keyboard_check(vk_numpad8));
	jump = (keyboard_check_pressed(vk_space) || keyboard_check(vk_numpad7));
	down = (keyboard_check(vk_down)  || keyboard_check(vk_numpad2));
	attacking = (keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_numpad9));

	// Check for ground
	if (place_meeting(x,y+1,obj_solid)){
	     if (jump)
	     {
			vspd = -jspd;
	     }
	} else {
	     if (vspd < 10) {
	          vspd += grav;
	     }
	}
	if (attacking) {
	     image_index = 0;
	     state = "attack";

		 show_debug_message("State: attack");
		

	}
	// Moving right
	if (right) {
		sprite_index = spr_player;
		image_speed = 2;
		hspd = spd; 
	}

	// Moving left
	if (left) {
		sprite_index = spr_playerLeft;
		image_speed = 2;
		hspd = -spd; 
	}

	// Check for not moving
	if ((!right && !left) || (right && left)) { 
		hspd = 0;
		image_index = 0;
		image_speed = 0;
	}
}

function collisions(){
// Horizontal collisions
if (place_meeting(x+hspd, y, obj_solid)) {
     if (!place_meeting(x+sign(hspd),y,obj_solid)) {
          x += sign(hspd);
     }
     hspd = 0;
}

// Move horizontally
x += hspd;
// Vertical collisions
if (place_meeting(x, y+vspd, obj_solid)) {
     if (!place_meeting(x,y+sign(vspd),obj_solid)) {
               y += sign(vspd);
     }
     vspd = 0;
}

// Move vertically
y += vspd;
}

function attack(){

	if (firerate) {
		audio_play_sound(blip14, 1, false);
		firerate = false;
		// get player direction and up/down, make it, fire, dont bother with rotating while game runs (not possible with above method)
		if (up) {
			freeze_ray = instance_create_layer(x-2, y-7, "Instances", obj_freeze_ray);
			with (freeze_ray) {
				sprite_index = spr_freezegun_up;
			}
		} else if (down) {
			freeze_ray = instance_create_layer(x-2, y+1, "Instances", obj_freeze_ray);
			with (freeze_ray) {
				sprite_index = spr_freezegun_down;
			}
		} else if (obj_player.sprite_index == spr_player) {
			freeze_ray = instance_create_layer(x+4, y-4, "Instances", obj_freeze_ray);
			with (freeze_ray) {
				sprite_index = spr_freezegun_right;
			}
		} else if (obj_player.sprite_index == spr_playerLeft) {
			freeze_ray = instance_create_layer(x-4, y-4, "Instances", obj_freeze_ray);
			with (freeze_ray) {
				sprite_index = spr_freezegun_left;
			}
		}
		alarm[0] = room_speed * 0.5; // 1 is the the seconds between fire
	}
	state = "move";
}

function checkHealth() {
	if (hp <= 0) {
		state = "dying";
	}
}

function playerDie() {
	x = xprevious;
	y = yprevious;
	if (sprite_index != spr_playerdeath) {
		sprite_index = spr_playerdeath;
		audio_play_sound(negative1, 0, false);
		image_index = 0;
		image_speed = 2;
	} else if (image_index >= (sprite_get_number(spr_playerdeath) - 1 ) )&& (runOnce == false) {
		
		runOnce = true;
		instance_create_depth(0,0,-9999,obj_transition);
		
		image_speed = 0;
		//x = spawn_x;
		//y = spawn_y;
		
	}
	
}
/// @description Step Event
if (!frozen) {
	// !FROZEN IS THE MAIN STEP EVENT
	hspd = direction_facing * spd;
	

	vspd = vspd + grav;

	//Checks for Horizontal Collision
	if(place_meeting(x+hspd,y,obj_solid)){
		while(!place_meeting(x+sign(hspd),y,obj_solid)){
			x = x + sign(hspd);
		}
	
		direction_facing = direction_facing * -1;
	}
	x = x + hspd;
	//Checks for Vertical Collision
	if(place_meeting(x,y+vspd,obj_solid)){
		while(!place_meeting(x,y+sign(vspd),obj_solid)){
			y = y + sign(vspd);
		}
		vspd = 0;
	}
	y = y + vspd;
	//Check for Player Collision
	if (place_meeting(x,y,obj_player) && !playerJustDamaged) {
		obj_player.hp -=1;
		alarm[0] = game_get_speed(gamespeed_fps) * 2
		playerJustDamaged = true;
	}
} else {
       draw_frozen();
}
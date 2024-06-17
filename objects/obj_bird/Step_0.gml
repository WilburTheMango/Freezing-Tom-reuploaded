if (!frozen) {
	hspd = direction_facing * spd;



	//Checks for Horizontal Collision
	if(place_meeting(x+hspd,y,obj_solid)){
		while(!place_meeting(x+sign(hspd),y,obj_solid)){
			x = x + sign(hspd);
		}
	
		direction_facing = direction_facing * -1;
	}
	if(direction_facing < 0){
		sprite_index = spr_birdFuckLeft;
	}
	else{
		sprite_index = spr_birdFuckRight;
	}
	x = x + hspd;
	//Checks for Vertical Collision
	if(place_meeting(x,y+vspd,obj_solid)){
		while(!place_meeting(x,y+sign(vspd),obj_solid)){
			y = y + sign(vspd);
		}
		vspd = 0;
		increment +=1;
	}
	//Horizontal Movement
	y = y + sin(increment);
	increment += 0.1;
	//Check for Player Collision
	if (place_meeting(x,y,obj_player) && !playerJustDamaged) {
		obj_player.hp -=1;
		audio_play_sound(hit5, 1, false);
		alarm[0] = game_get_speed(gamespeed_fps) * 2
		playerJustDamaged = true;
	}
} else {
	draw_frozen();	
}

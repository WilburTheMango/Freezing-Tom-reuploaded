/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y,obj_player)) {
	obj_player.health = 0;
	obj_player.state = "dying";
}
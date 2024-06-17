

function draw_frozen(){
	ice_cube = instance_create_layer(x-(width/2)-1,y-(height/2)-1, "Instances_ice_cubes", obj_ice_cube);
	ice_cube.width = sprite_width +1;
	ice_cube.height = sprite_height+1;
	ice_cube.alarm[0] = room_speed * 5;
	ice_cube.alarm[1] = room_speed * 4;
	image_speed = 0;
}
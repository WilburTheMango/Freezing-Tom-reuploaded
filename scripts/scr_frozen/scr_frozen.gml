// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_frozen(){
	   frozen = true;
       ice_cube = instance_create_layer(x-(sprite_width/2)-2,y-(sprite_height/2)-3, "Instances_ice_cubes", obj_ice_cube);
	   ice_cube.target = self;
       ice_cube.width = sprite_width +1;
       ice_cube.image_yscale = (ice_cube.sprite_height-4)/sprite_height;
       image_speed = 0;
}

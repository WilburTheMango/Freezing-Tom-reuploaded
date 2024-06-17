/// @description Insert description here

if(x <= leftMax){
	edgeTouch = true;
}else if(x >= rightMax){
	edgeTouch = false;
}

if (edgeTouch) {
	x += moveSpeed;
	dir_moving = "right";
} else {
	x -= moveSpeed;
	dir_moving = "left";
}
if (collision_rectangle(x-5, y-3, x+5,y, obj_player, false, false)) {
	if (dir_moving == "right") {
		obj_player.x += moveSpeed;
	} else {
		obj_player.x += -moveSpeed;
	}
}

/// @description take direction and move that way
if (dir == "right") {
	x += 3;	
} else if (dir == "left") {
	x -= 3;	
} else if (dir == "up") {
	y -= 3;	
} else if (dir == "down") {
	y += 3;	
} else if (dir == "") {
	show_debug_message("no dir set on bullet");
}
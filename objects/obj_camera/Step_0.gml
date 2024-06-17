/// @description Insert description here
if (follow != noone){
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x)/camEasing;
y += (yTo -y)/camEasing;


// Uses viewport 0 and sets it to half the cam width and height or the middle of the screen
camera_set_view_pos(view_camera[0], floor(x-(camWidth*0.5)),floor(y-(camHeight*0.5)));

// We use floor() to make the final camera view position an integer value
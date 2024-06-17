/// @description Insert description here
camWidth = 84;
camHeight = 48;
camEasing = 10; // How quickly the camera moves(higher is slower)

surface_resize(application_surface, camWidth+1, camHeight+1);
application_surface_draw_enable(false); // Do not immediately draw the game when running, we will do it later in post draw

follow = obj_player; 

xTo = x; // Actual x value of followed object
yTo = y; // Actual y value of followed object




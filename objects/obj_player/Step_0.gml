/// @description Player's Step Event
if (state != "dying") {
	checkHealth();	
}
switch (state){
     case "move":  
		 keyboardLogic();
		 break;
		 
	 case "attack":    
		attack();      
		break;
		
	 case "dying":
		playerDie();
		break;
}
if (keyboard_check(ord("R"))) {
	room_restart();
}
if (state != "dying") {

	collisions();
}

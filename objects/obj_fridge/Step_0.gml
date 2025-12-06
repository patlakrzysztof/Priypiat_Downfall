if (place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E"))){ 
		eating=1;
		obj_player.move="";
		obj_player.animation=1;
		alarm[0]=90; //disable text
		obj_game.alarm[0]=90; //disable cloud
		obj_player.radiation=0;
}
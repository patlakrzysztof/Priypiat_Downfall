if (place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E"))){ 
		if (obj_player.skin="pijama"){
		if (obj_game.task==14){
			obj_game.task=15;
		}
		obj_player.x=1080;
		obj_player.y=857;
		sleep=1.5;
		obj_game.start_info=0;
		obj_player.move="";
		obj_dialog.dialog=1;
		obj_dialog.dialog_x=4;
		obj_dialog.dialog_y=2;
		obj_player.animation=1;
		alarm[0]=90; //disable text
		obj_game.alarm[0]=90; //disable cloud
		obj_player.radiation=0;
		}
		else{
		pijama_error=1.5;
		obj_game.start_info=0;
		obj_dialog.dialog=1;
		obj_dialog.dialog_x=5;
		obj_dialog.dialog_y=4;
		alarm[0]=90; //disable text
		obj_game.alarm[0]=90; //disable cloud
		}
}
//control panel
if (place_meeting(x,y,obj_player)){ 
	obj_player.radiation+=0.01;
	if (keyboard_check_pressed(ord("E")) and obj_dialog.dialog==0){
		if (obj_player.skin=="hazmat"){
			obj_game.skin_hazmat_error=1.5;
			obj_dialog.dialog=1;
			obj_dialog.dialog_x=6;
			obj_dialog.dialog_y=4;
			obj_game.alarm[0]=120;
		}
		else if (obj_game.task==7){	
			obj_game.task=8;
			obj_player.animation=1;
			obj_player.y=857;
			obj_player.alarm[0]=120;
		}
		else if (obj_game.task==11){
			obj_game.task=12;
			obj_player.animation=1;
			obj_player.y=857;
			obj_player.alarm[0]=120;
		}
		else if (obj_game.task==18){
			obj_game.task=19;
			obj_player.animation=1;
			obj_player.y=857;
			obj_player.alarm[0]=120;
		}
		else if (obj_game.task==24){
			obj_game.task=25;
			obj_player.animation=1;
			obj_player.y=857;
			obj_player.alarm[0]=120;
		}
		else {
			obj_player.animation=1;
			obj_player.alarm[0]=120;
		}
	}
}
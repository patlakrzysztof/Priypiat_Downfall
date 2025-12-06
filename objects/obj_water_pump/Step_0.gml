if (obj_game.task==20 and place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E"))){
	obj_game.pump_error=1.3;
	obj_dialog.dialog=1;
	obj_dialog.dialog_x=6.6;
	obj_dialog.dialog_y=4.2;
	obj_game.alarm[0]=120;
	obj_game.task=21;
}
if (obj_game.task==22 and place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E"))){
	obj_game.task=23;
}
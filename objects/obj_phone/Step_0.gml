if (place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E")) and obj_player.skin!="hazmat"){
	obj_dialog.dialog=1;
	obj_dialog.dialog_x=6;
	obj_dialog.dialog_y=4;
	phone_info=1;
	alarm[0]=100; //disable chat
	obj_game.alarm[0]=100; //disable cloud
}

if (place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E")) and obj_player.skin=="hazmat"){
			obj_game.skin_hazmat_error=1.5;
			obj_dialog.dialog=1;
			obj_dialog.dialog_x=6;
			obj_dialog.dialog_y=4;
			obj_game.alarm[0]=100;
		}
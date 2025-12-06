//going down the stairs in powerplant
if (room==room_pp_control_room and place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E"))){ 
			room_goto(room_pp_connector);
			obj_dialog.dialog=0;
			obj_game.skin_hazmat_error=0;
}

//going up the stairs in powerplant
if (room==room_pp_connector and place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E"))){ 
			if (obj_game.task==5){
				obj_game.task=6;	
			}
			room_goto(room_pp_control_room);
			obj_dialog.dialog=0;
}

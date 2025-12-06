//going into house
if (room==room_estate){ 
	if (place_meeting(x,y,obj_player)){
		if (keyboard_check_pressed(ord("E"))){
			room_goto(room_home);
			obj_player.x=1720;
			if (obj_game.task==13){
				obj_game.task=14;
			}
		}
	}
}

//going out of house
if (room==room_home){ 
	if (place_meeting(x,y,obj_player)){
		if (keyboard_check_pressed(ord("E"))){
			room_goto(room_estate);
			obj_player.x=960;
			if (obj_game.task==3){
				obj_game.task=4;
			}
			if (obj_game.task==15){
				obj_game.task=16;
			}
		}
	}
}
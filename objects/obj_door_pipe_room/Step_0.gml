//going into pipe_room
if (room==room_pp_connector and place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E"))){ 
			room_goto(room_pp_pipe_room);
}

//going out of pipe_room
if (room==room_pp_pipe_room and place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E"))){ 
			room_goto(room_pp_connector);
}
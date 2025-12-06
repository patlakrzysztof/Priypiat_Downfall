//changing in locker before powerplant
if (room=room_pp_entrance and place_meeting(x,y,obj_player)){ 
	if (keyboard_check_pressed(ord("E"))){
		if (obj_player.skin!="worker"){
			obj_player.last_skin=obj_player.skin;
			obj_player.skin="worker";
		}
		else{
			obj_player.skin=obj_player.last_skin;
		}
		}
}

//changing in locker in powerplant
if (room=room_pp_connector and place_meeting(x,y,obj_player)){ 
	if (keyboard_check_pressed(ord("E"))){
		if (obj_player.skin!="hazmat"){
			obj_player.skin="hazmat";
		}
		else{
			obj_player.skin="worker";
		}
		}
}

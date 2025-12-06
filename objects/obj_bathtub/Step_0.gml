//showering
if (place_meeting(x,y,obj_player)){ 
	image_alpha=1;
	if (keyboard_check_pressed(ord("E"))){
		obj_player.x=120;
		obj_player.y=857;
		obj_player.animation=1;
		obj_player.alarm[0]=90;
		obj_player.radiation=0;
		if (room==room_home and obj_game.task==1){
			obj_game.task=2;
		}
	}
}
else if (room==room_home){
	image_alpha=0;
}
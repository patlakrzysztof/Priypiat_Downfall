//changing in wardrobe
if (place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E"))){ 
		if (obj_game.task==2){
			obj_game.task=3;
		}
		if (obj_player.skin=="skin_1"){
			obj_player.skin="skin_2";
		}
		else if (obj_player.skin=="skin_2"){
			obj_player.skin="skin_3";
		}
		else if (obj_player.skin=="skin_3"){
			obj_player.skin="pijama";
		}
		else if (obj_player.skin=="pijama"){
			obj_player.skin="skin_1";
		}
		else if (obj_player.skin=="worker"){
			obj_player.skin="skin_1"
		}
}

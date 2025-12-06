if (obj_game.code_error==-1){
	sprite_index=spr_light_green;
}

else if (obj_game.code_tries==2){
	sprite_index=spr_light_red;
	obj_game.code_error=1
}
else if (obj_game.code_tries==0){
	sprite_index=spr_light_off;
}
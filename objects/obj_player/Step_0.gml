if (obj_game.game_over==0){

//walking and animation(image_speed)
if (animation==0){
	if ((keyboard_check(ord("D")) or keyboard_check(vk_right)) and (keyboard_check(ord("A")) or keyboard_check(vk_left))){
		move="";
	}
	else if (keyboard_check(ord("D")) or keyboard_check(vk_right)){
		move="r";
	}
	else if (keyboard_check(ord("A")) or keyboard_check(vk_left)){
		move="l";
	}
	else{
		move="";
	}
}
else{
	image_speed=1;	
}

//skins
if (skin=="worker"){ //worker skin
	if (move=="r"){
		x_speed=20; //normal 10
		sprite_index=spr_player_worker_r_walk;
		image_speed=1;
		facing="r";
		
	}
	else if (move=="l"){
		x_speed=-20;
		sprite_index=spr_player_worker_l_walk;
		image_speed=1;
		facing="l";
	}
	else{
		x_speed=0;
		if (facing=="r"){
			sprite_index=spr_player_worker_r;
		}
		else{
			sprite_index=spr_player_worker_l;
		}
	}
}
else if (skin=="skin_1"){ //normal skin
	if (move=="r"){
		x_speed=20; //normal 10
		sprite_index=spr_player_1_r_walk;
		image_speed=1;
		facing="r";
	}
	else if (move=="l"){
		x_speed=-20;
		sprite_index=spr_player_1_l_walk;
		image_speed=1;
		facing="l";
	}
	else{
		x_speed=0;
		if (facing=="r"){
			sprite_index=spr_player_1_r;
		}
		else{
			sprite_index=spr_player_1_l;
		}
	}	
}
else if (skin=="skin_2"){ //2nd skin
	if (move=="r"){
		x_speed=10;
		sprite_index=spr_player_2_r_walk;
		image_speed=1;
		facing="r";
	}
	else if (move=="l"){
		x_speed=-10;
		sprite_index=spr_player_2_l_walk;
		image_speed=1;
		facing="l";
	}
	else{
		x_speed=0;
		if (facing=="r"){
			sprite_index=spr_player_2_r;
		}
		else{
			sprite_index=spr_player_2_l;
		}
	}	
}
else if (skin=="skin_3"){ //3rd skin
	if (move=="r"){
		x_speed=10;
		sprite_index=spr_player_3_r_walk;
		image_speed=1;
		facing="r";
	}
	else if (move=="l"){
		x_speed=-10;
		sprite_index=spr_player_3_l_walk;
		image_speed=1;
		facing="l";
	}
	else{
		x_speed=0;
		if (facing=="r"){
			sprite_index=spr_player_3_r;
		}
		else{
			sprite_index=spr_player_3_l;
		}
	}	
}
else if (skin=="hazmat"){ //hazmat suit skin
	if (move=="r"){
		x_speed=10;
		sprite_index=spr_player_hazmat_r_walk;
		image_speed=1;
		facing="r";
	}
	else if (move=="l"){
		x_speed=-10;
		sprite_index=spr_player_hazmat_l_walk;
		image_speed=1;
		facing="l";
	}
	else{
		x_speed=0;
		if (facing=="r"){
			sprite_index=spr_player_hazmat_r;
		}
		else{
			sprite_index=spr_player_hazmat_l;
		}
	}	
}
else if (skin=="pijama"){ //hazmat suit skin
	if (move=="r"){
		x_speed=10;
		sprite_index=spr_player_pijama_r_walk;
		image_speed=1;
		facing="r";
	}
	else if (move=="l"){
		x_speed=-10;
		sprite_index=spr_player_pijama_l_walk;
		image_speed=1;
		facing="l";
	}
	else{
		x_speed=0;
		if (facing=="r"){
			sprite_index=spr_player_pijama_r;
		}
		else{
			sprite_index=spr_player_pijama_l;
		}
	}	
}

y_speed+=1; //gravity
y_speed = clamp(y_speed, -15, 15);

//jumping
if (place_meeting(x,y+1,obj_ground)){ 
	if (keyboard_check(vk_space) or keyboard_check(ord("W")) or keyboard_check(vk_up)){
		y_speed=-15;
	}
	else{
		y_speed=0;
	}
}

if (animation==0){ //moving
    move_and_collide(x_speed, y_speed, obj_ground);
    
}

//decontaminating
if (place_meeting(x,y,obj_decontamination)){ 
	if (keyboard_check_pressed(ord("E"))){
		animation=1;
		move="";
		x=1335;
		y=857;
		alarm[0]=90;
		radiation=0;
	}
}

//task 4
if (obj_game.task==4 and in_powerplant==true){
	obj_game.task=5;
}

//next room
if (place_meeting(x,y,obj_next_room)){
	room_goto_next();
	x=100;
}

//previous room
if (place_meeting(x,y,obj_previous_room)){ 
	room_goto_previous();
	x=1820;
}

//levers in reactor room
if (obj_game.task==9){
if (place_meeting(x,y,obj_lever_1) and keyboard_check_pressed(ord("E")) and obj_game.code_error==0){
	if (obj_game.lever_1==0){
		obj_game.lever_1=1
		if (obj_lever_1.sprite_index==spr_lever_off){
			obj_lever_1.sprite_index=spr_lever_on
		}
		else{
			obj_lever_1.sprite_index=spr_lever_off
		}
		 
	}
	else{
		obj_game.lever_1=0
		if (obj_lever_1.sprite_index==spr_lever_off){
			obj_lever_1.sprite_index=spr_lever_on
		}
		else{
			obj_lever_1.sprite_index=spr_lever_off
		}
	}
}

else if (place_meeting(x,y,obj_lever_2) and keyboard_check_pressed(ord("E")) and obj_game.code_error==0){
	if (obj_game.lever_2==0){
		obj_game.lever_2=1
		if (obj_lever_2.sprite_index==spr_lever_off){
			obj_lever_2.sprite_index=spr_lever_on
		}
		else{
			obj_lever_2.sprite_index=spr_lever_off
		}
	}
	else{
		obj_game.lever_2=0
		if (obj_lever_2.sprite_index==spr_lever_off){
			obj_lever_2.sprite_index=spr_lever_on
		}
		else{
			obj_lever_2.sprite_index=spr_lever_off
		}
	}
}

else if (place_meeting(x,y,obj_lever_3) and keyboard_check_pressed(ord("E")) and obj_game.code_error==0){
	if (obj_game.lever_3==0){
		obj_game.lever_3=1
		if (obj_lever_3.sprite_index==spr_lever_off){
			obj_lever_3.sprite_index=spr_lever_on
		}
		else{
			obj_lever_3.sprite_index=spr_lever_off
		}
	}
	else{
		obj_game.lever_3=0
		if (obj_lever_3.sprite_index==spr_lever_off){
			obj_lever_3.sprite_index=spr_lever_on
		}
		else{
			obj_lever_3.sprite_index=spr_lever_off
		}
	}
}

else if (place_meeting(x,y,obj_lever_4) and keyboard_check_pressed(ord("E")) and obj_game.code_error==0){
	if (obj_game.lever_4==0){
		obj_game.lever_4=1
		if (obj_lever_4.sprite_index==spr_lever_off){
			obj_lever_4.sprite_index=spr_lever_on
		}
		else{
			obj_lever_4.sprite_index=spr_lever_off
		}
	}
	else{
		obj_game.lever_4=0
		if (obj_lever_4.sprite_index==spr_lever_off){
			obj_lever_4.sprite_index=spr_lever_on
		}
		else{
			obj_lever_4.sprite_index=spr_lever_off
		}
	}
}

//checking the code
else if (place_meeting(x,y,obj_button_check) and keyboard_check_pressed(ord("E")) and obj_game.code_error==0){
	var result=obj_game.lever_1+obj_game.lever_2+obj_game.lever_3+obj_game.lever_4
	if (result==4){
		obj_light.sprite_index=spr_light_green;
		obj_game.code_error=-1;//correct code
		if (obj_game.task==9){
			obj_game.task=10;
		}
	}
	else if (result>1 and obj_game.code_tries<2){
		obj_light.sprite_index=spr_light_yellow;
		obj_game.code_tries+=1
	}
	else{
		obj_game.code_tries+=1
	}

}

//cooling the reactor
if (place_meeting(x,y,obj_valve) and keyboard_check_pressed(ord("E")) and obj_game.code_error==1){
	obj_game.code_error=0;
	obj_game.code_tries=0;
	animation=1;
	alarm[0]=120;
}

}

 //radiation near door to the pipe room
if ((room!=room_pp_reactor) and place_meeting(x,y,obj_door_pipe_room)){
	radiation+=0.01;	
}

//radiation inside reactor room
if ( skin=="hazmat" and room=room_pp_reactor){ 
	radiation+=0.05
}
else if (room=room_pp_reactor){
	radiation+=0.5
}

//radiation inside pipe room
if ( skin=="hazmat" and room=room_pp_pipe_room){ 
	radiation+=0.01
}
else if (room=room_pp_pipe_room){
	radiation+=0.05
}

//powerplant door
if (distance_to_object(obj_door_powerplant) < 10) { 
    if (keyboard_check_pressed(ord("E"))) {
		var door=instance_nearest(x,y,obj_door_powerplant)
		
		if (in_powerplant){
			if (radiation!=0){ //warning to decontaminate
				obj_game.decontamination_error=1.5;
				obj_dialog.dialog=1;
				obj_dialog.dialog_x=6;
				obj_dialog.dialog_y=4;
				obj_game.alarm[0]=60;
			}
			else if (obj_player.skin=="hazmat"){
			obj_game.skin_hazmat_error=1.5; //warning to take off the suit
			obj_dialog.dialog=1;
			obj_dialog.dialog_x=6;
			obj_dialog.dialog_y=4;
			obj_game.alarm[0]=120;
			}
			else{
				x = door.x - 50;
				in_powerplant = false;	
			}
		}
		else{
			if (skin=="worker"){
				x = door.x + 70;
	            in_powerplant = true;
				if (obj_game.task==16){
					obj_game.task=17;
				}
			}
			else{
				obj_game.skin_door_error=1.5; //warning to get dressed
				obj_dialog.dialog=1;
				obj_dialog.dialog_x=4;
				obj_dialog.dialog_y=4;
				obj_game.alarm[0]=60;
			}
		}
    }
}

//fuse
if (obj_game.task==21 and room==room_pp_storage){
	if (place_meeting(x,y,obj_fuse) and keyboard_check_pressed(ord("E"))){
	obj_fuse.alarm[0]=2;
	obj_game.task=22;
	}
}

}
//game over
else{ 
	move=""; 
	y_speed=0;
	if (skin=="skin_1"){
		sprite_index=spr_player_1_death;
		y=920;
	}
	else if (skin=="worker"){
		sprite_index=spr_player_worker_death;
		y=920;
	}
	else if (skin=="skin_2"){
		sprite_index=spr_player_2_death;
		y=920;
	}
	else if (skin=="skin_3"){
		sprite_index=spr_player_3_death;
		y=920;
	}
	else if (skin=="hazmat"){
		sprite_index=spr_player_hazmat_death;
		y=920;
	}
}
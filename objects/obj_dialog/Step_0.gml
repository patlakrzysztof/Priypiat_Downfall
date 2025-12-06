//dialog over the chief
if (room==room_pp_control_room and (obj_chief.talking_to_chief_6!=0 or obj_chief.talking_to_chief_5!=0 or obj_chief.talking_to_chief_4!=0 or obj_chief.talking_to_chief_1!=0 or obj_chief.talking_to_chief_2!=0 or obj_chief.talking_to_chief_3!=0)){
	x=obj_chief.x+150;
	y=obj_chief.y-200;
}
else if (room==room_home and obj_bed.sleep!=0){
x=obj_player.x+20;
y=obj_player.y-150;
}
else{
x=obj_player.x+20;
y=obj_player.y-300;
}
image_alpha=dialog;
image_xscale=dialog_x;
image_yscale=dialog_y;
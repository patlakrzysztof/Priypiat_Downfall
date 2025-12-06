//talking to the chief engineer to do smth at control panel
if (place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E")) and obj_game.task==6){
	obj_game.task=7
	talking_to_chief_1=1;
	obj_dialog.dialog=1;
	obj_dialog.dialog_x=10;
	obj_dialog.dialog_y=4;
	alarm[0]=240; //disable chat
	obj_game.alarm[0]=240; //disable cloud
}
//talking to the chief engineer to do smth with rods
if (place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E")) and obj_game.task==8){
	obj_game.task=9
	talking_to_chief_1=0;
	talking_to_chief_2=1;
	obj_dialog.dialog=1;
	obj_dialog.dialog_x=10;
	obj_dialog.dialog_y=4;
	alarm[0]=240; //disable chat
	obj_game.alarm[0]=240; //disable cloud
}
//talking to the chief engineer after the rods
if (place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E")) and obj_game.task==10){
	obj_game.task=11;
	talking_to_chief_2=0;
	talking_to_chief_3=1;
	obj_dialog.dialog=1;
	obj_dialog.dialog_x=10;
	obj_dialog.dialog_y=4;
	alarm[0]=240; //disable chat
	obj_game.alarm[0]=240; //disable cloud
}
//talking to the chief engineer after work
if (place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E")) and obj_game.task==12){
	obj_game.task=13;
	talking_to_chief_3=0;
	talking_to_chief_4=1;
	obj_dialog.dialog=1;
	obj_dialog.dialog_x=10;
	obj_dialog.dialog_y=4;
	alarm[0]=240; //disable chat
	obj_game.alarm[0]=240; //disable cloud
}
//talking to the chief engineer to do smth at control panel pt2
if (place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E")) and obj_game.task==17){
	obj_game.task=18
	talking_to_chief_4=0;
	talking_to_chief_1=1;
	obj_dialog.dialog=1;
	obj_dialog.dialog_x=10;
	obj_dialog.dialog_y=4;
	alarm[0]=240; //disable chat
	obj_game.alarm[0]=240; //disable cloud
	//dialog
}
//talking to the chief engineer to do smth with water pump
if (place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E")) and obj_game.task==19){
	obj_game.task=20
	talking_to_chief_1=0;
	talking_to_chief_5=1;
	obj_dialog.dialog=1;
	obj_dialog.dialog_x=10;
	obj_dialog.dialog_y=5;
	alarm[0]=240; //disable chat
	obj_game.alarm[0]=240; //disable cloud
}
//talking to the chief engineer after fixing the water pump
if (place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E")) and obj_game.task==23){
	obj_game.task=24
	talking_to_chief_5=0;
	talking_to_chief_6=1;
	obj_dialog.dialog=1;
	obj_dialog.dialog_x=10;
	obj_dialog.dialog_y=5;
	alarm[0]=240; //disable chat
	obj_game.alarm[0]=240; //disable cloud
}
//hud
draw_text_transformed_color(10,990,"Press \"esc\" to restart",2,2,0,c_white,c_white,c_white,c_white,true);
draw_text_transformed_color(10,1030,"Press \"E\" to interact",2,2,0,c_white,c_white,c_white,c_white,true);

//notifications
draw_text_transformed_color(obj_player.x+110,obj_player.y-220,"I need to\nchange",skin_door_error,skin_door_error,0,c_black,c_black,c_black,c_black,true);
draw_text_transformed_color(obj_player.x+135,obj_player.y-220,"I need to\ndecontaminate",decontamination_error,decontamination_error,0,c_black,c_black,c_black,c_black,true);
draw_text_transformed_color(obj_player.x+115,obj_player.y-220,"Hello\nworld!",start_info,start_info,0,c_black,c_black,c_black,c_black,true);
draw_text_transformed_color(obj_player.x+125,obj_player.y-230,"I need to take\noff my hazmat\nsuit",skin_hazmat_error,skin_hazmat_error,0,c_black,c_black,c_black,c_black,true);
draw_text_transformed_color(obj_player.x+130,obj_player.y-210,"I need to find a fuse\nfor a water pump panel",pump_error,pump_error,0,c_black,c_black,c_black,c_black,true);

//sleep
if (room=room_home){
draw_text_transformed_color(obj_player.x+110,obj_player.y-110,"Zzzzzz...",obj_bed.sleep,obj_bed.sleep,0,c_black,c_black,c_black,c_black,true);
draw_text_transformed_color(obj_player.x+120,obj_player.y-230,"I can't sleep\nwithout my\npijama",obj_bed.pijama_error,obj_bed.pijama_error,0,c_black,c_black,c_black,c_black,true);
}

if (obj_player.radiation>0){ //radiation HUD
	draw_text_transformed_color(625,1015,"Radiation:",1.5,1.5,0,c_lime,c_white,c_lime,c_white,true);
	draw_healthbar(760, 1010, 1160,1050, obj_player.radiation, c_grey, c_green, c_lime, 0, true, true);
}

if (game_over == 1){ //game over notification
	draw_text_transformed_color(400,250,"GAME OVER You died because of radiation",3.25,3.25,0,c_red,c_red,c_red,c_red,true);
}

if (obj_player.radiation>85){
	draw_text_transformed_color(775,980,"YOU NEED TO DECONTAMINATE!!!",1.5,1.5,0,c_red,c_red,c_red,c_red,true);
}

//rooms
if (room==room_home){
	draw_text_transformed_color(10,0,"HOME",2,2,0,c_white,c_white,c_white,c_white,true);
}
else if (room==room_estate or room=room_city or room=room_pp_entrance){
	draw_text_transformed_color(10,0,"CITY",2,2,0,c_white,c_white,c_white,c_white,true);
}
else if (room==room_pp_connector){
	draw_text_transformed_color(10,0,"POWERPLANT",2,2,0,c_white,c_white,c_white,c_white,true);
}
else if (room==room_pp_control_room){
	draw_text_transformed_color(10,0,"POWERPLANT - CONTROL ROOM",2,2,0,c_white,c_white,c_white,c_white,true);
}
else if (room==room_pp_reactor){
	draw_text_transformed_color(10,0,"POWERPLANT - REACTOR",2,2,0,c_white,c_white,c_white,c_white,true);
}
else if (room==room_pp_pipe_room){
	draw_text_transformed_color(10,0,"POWERPLANT - PIPE ROOM",2,2,0,c_white,c_white,c_white,c_white,true);
}

//tasks
draw_text_transformed_color(1300,990,"Task :",2,2,0,c_white,c_white,c_white,c_white,true);

if (task==1){
	draw_text_transformed_color(1430,990,"Go to the toilet\nand take a shower",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==2){
	draw_text_transformed_color(1430,990,"Change your clothes\nin the wardrobe",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==3){
	draw_text_transformed_color(1430,990,"Go to the work",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==4){
	draw_text_transformed_color(1430,990,"Go to the powerplant -->",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==5){
	draw_text_transformed_color(1430,990,"Go to the control room",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==6){
	draw_text_transformed_color(1430,990,"Talk to the chief\nengineer",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==7){
	draw_text_transformed_color(1430,990,"Start working\non a contol panel",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==8){
	draw_text_transformed_color(1430,990,"Talk to the chief\nengineer",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==9){
	draw_text_transformed_color(1430,990,"Fix the control rods\nin the reactor",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==10){
	draw_text_transformed_color(1430,990,"Talk to the chief\nengineer",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==11){
	draw_text_transformed_color(1430,990,"Work on the\ncontrol panel",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==12){
	draw_text_transformed_color(1430,990,"Talk to the chief\nengineer",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==13){
	draw_text_transformed_color(1430,990,"Go home",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==14){
	draw_text_transformed_color(1430,990,"Go to sleep",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==15){
	draw_text_transformed_color(1430,990,"Take a shower,eat something\nand go to the work",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==16){
	draw_text_transformed_color(1430,990,"Go to the work",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==17){
	draw_text_transformed_color(1430,990,"Talk to the chief\nengineer",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==18){
	draw_text_transformed_color(1430,990,"Work on the\ncontrol panel",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==19){
	draw_text_transformed_color(1430,990,"Talk to the chief\nengineer",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==20){
	draw_text_transformed_color(1430,990,"Check the water pump",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==21){
	draw_text_transformed_color(1430,990,"Find the fuse",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==22){
	draw_text_transformed_color(1430,990,"Come back to\nthe water pump",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==23){
	draw_text_transformed_color(1430,990,"Talk to the chief\nengineer",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==24){
	draw_text_transformed_color(1430,990,"Work on the\ncontrol panel",2,2,0,c_white,c_white,c_white,c_white,true);
}
if (task==25){
	draw_text_transformed_color(1430,990,"Work in progress...",2,2,0,c_white,c_white,c_white,c_white,true);
}


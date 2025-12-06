if keyboard_check(vk_escape){ //restarting
	game_restart();
}
if (obj_player.radiation>=100){ //game over
	game_over=1;
}


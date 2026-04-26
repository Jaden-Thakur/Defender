if (global.game_over) {
	room = rm_end;
	global.prev_score = global.curr_score;
	global.curr_score = 0;
	global.current_level = 0;
	
	global.mode = noone;
	global.game_over = false;
	
}
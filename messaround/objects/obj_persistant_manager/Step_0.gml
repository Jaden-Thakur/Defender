if (global.game_over) {
	room = rm_end;
	global.high_score = max(global.curr_score, global.high_score);
	global.prev_score = global.curr_score;
	global.highest_level = max(global.current_level, global.highest_level);
	global.game_over = false;
}
if (room = rm_end and keyboard_check_pressed(vk_space)) {
	room = rm_start;
	global.won = false;
	global.curr_score = 0;
	global.current_level = 0;
	global.mode = noone;
	
}

if (room == rm_game and !global.pause) {
	window_set_cursor(cr_none);
} else {
	window_set_cursor(cr_cross);
}
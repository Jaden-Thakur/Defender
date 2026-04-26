if (room == rm_game) {
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(20, 20, "Health: " + string(global.player_health));
	if( global.mode == "story") {
		draw_text(20, 40, "Level: " + string(global.current_level + 1));
	} else if (global.mode == "endless") {
		draw_text(20, 40, "Score: " + string(global.curr_score));
	}
} else if (room == rm_start) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	// draw_text(room_width/2, room_height/2 , "start");
	start_menu = menu(
		room_width/2, 
		room_height/2, 
		[
			["Story", story],
			["Endless", endless],
			["Unlocks", -1],
			["Settings", -1]
		]
	);
	 //draw_text(20, 20 , start_menu.hover);
} else if (room == rm_end) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2, room_height/2 , "Ya Lose");
}

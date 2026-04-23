if (room == rm_game) {
	draw_text(20, 20, "Health: " + string(global.player_health));
	draw_text(20, 40, "Level: " + string(global.current_level + 1));
} else if (room == rm_start) {
	draw_text(room_width, 20, "Health: " + string(global.player_health));
}

if (room == rm_game) {
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(20, 20, "Health: " + string(global.player_health));
	if( global.mode == "story") {
		draw_text(20, 40, "Level: " + string(global.current_level + 1));
	} else if (global.mode == "endless") {
		draw_text(20, 40, "Score: " + string(global.curr_score));
	}
	
	layer_set_visible("EndCard", false);
} else if (room == rm_start) {
	layer_set_visible("EndCard", false);
	layer_set_visible("StartMenu", true); 
	 
	
} else if (room == rm_end) {
	layer_set_visible("EndCard", true);
	
	var _ui_layer = layer_get_flexpanel_node("EndCard");
	var _text_elements_flex = flexpanel_node_get_child(_ui_layer, "Text_Elements");
	var _score_flex = flexpanel_node_get_child(_text_elements_flex, "Score_Level");
	//var _score_struct = flexpanel_node_get_struct(_score_flex);
	//var _score_text = _score_struct.layerElements[0].elementId;
	var _score_text = layer_text_get_id("EndCard", "score_text");
	if (global.mode == "endless") {
		layer_text_text(_score_text, "Score: " + string(global.prev_score) + " HighScore: " + string(global.high_score));
	} else if (global.won) {
		layer_text_text(_score_text, "You Win!");
	} else {
		layer_text_text(_score_text, "You Lose, Try Again!");
	}
	
	//flexpanel_calculate_layout(_ui_layer, display_get_gui_width(), display_get_gui_height(), flexpanel_direction.LTR);
	//flexpanel_calculate_layout(_ui_layer, room_width, room_height, flexpanel_direction.LTR);
}

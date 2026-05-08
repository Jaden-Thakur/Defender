switch (button_id) {
	case 0: 
		room = rm_game;
		global.mode = "story";
		layer_set_visible("StartMenu", false);
		break;
		
	case 1:
		room = rm_game;
		global.mode = "endless";
		layer_set_visible("StartMenu", false);
		break;
		
	case 2:
		game_end();
		break;
		
	case 3:
		global.pause = false;
		layer_set_visible("PauseMenu", false);
		break;
		
	case 4:
		global.pause = false;
		layer_set_visible("PauseMenu", false);
		room = rm_start;
		global.prev_score = global.curr_score;
		global.curr_score = 0;
		global.current_level = 0;
		global.mode = noone;
		break;
}

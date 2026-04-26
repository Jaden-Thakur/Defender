#macro menu_line_height 20
#macro menu_margin 10

function menu(_x, _y, _opt, _des = -1){
	with (instance_create_depth(_x, _y, -999, obj_menu)) {
		options = _opt;
		description = _des;
		num_options =array_length(_opt);
		
		
		
		// set font here
		
		// finding the width of the menu
		text_width = 1;
		
		if (_des != -1) {
			text_width = max(text_width, string_width(_des));
		}
		
		for (var i = 0; i < num_options; i++) {
			text_width = max(text_width, string_width(_opt[i][0]));
		}
			
		//setting line height and determining the height of the menu
		line_height = menu_line_height; // adjust this to make it work for the font
		
		text_height = line_height * (num_options + !(_des == -1));
		
		//sets margins of the menu
		margin = menu_margin; // adjust this to whatever looks nicest
		
		width = 2 * margin  + text_width;
		height = 2 * margin + text_height;
		
		
	}

}

function story(){
	room = rm_game;
	global.mode = "story";
}
function endless(){
	room = rm_game;
	global.mode = "endless";
}
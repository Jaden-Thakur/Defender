if (keyboard_check_pressed(vk_space) and start_screen and room = rm_start) {
	start_screen = false;
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
}

if (!start_screen and keyboard_check_pressed(vk_escape)) {
	start_screen = true;
	instance_destroy(start_menu);
}
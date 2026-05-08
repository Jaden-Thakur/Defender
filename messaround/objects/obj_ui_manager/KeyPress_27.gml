if (!global.pause and room == rm_game) {
	global.pause = true;
	layer_set_visible("PauseMenu", true);
	//pause_menu = menu (
	//	room_width/2, 
	//	room_height/2, 
	//	[
	//		["Resume", function res() {instance_destroy(pause_menu); global.pause = false;}],
	//		["Settings", -1],
	//		["Return to Menu", function rtrn() {room = rm_start; global.pause = false;}],
	//		["Quit", function go() {game_end()}],
	//	]
	//);
} else if (instance_exists(obj_menu) and room == rm_game) {
	global.pause = false;
	layer_set_visible("PauseMenu", false);
}
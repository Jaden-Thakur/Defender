// enemy spawner

while(enemies_to_spawn and spawn) {
	e_type = random_range(0, 3);
	enemy_sprite_height = sprite_get_height(enemies[e_type].spr);
	enemy_sprite_width = sprite_get_width(enemies[e_type].spr);
	// enemy spawn positions
	num_of_lanes = room_height div enemy_sprite_height;
	lane = random_range(0, num_of_lanes);
	x_spawn = room_width + enemy_sprite_width/2;
	y_spawn = lane * enemy_sprite_height + enemy_sprite_height/2;
	enemy = spawn_enemy(e_type);
	enemies_to_spawn--;
	spawn = false;
	alarm[0] =  game_get_speed(gamespeed_fps) * spawn_rate;
}
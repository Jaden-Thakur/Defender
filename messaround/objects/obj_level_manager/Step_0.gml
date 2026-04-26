// enemy spawner
if global.mode = "story"{
	while(enemies_to_spawn and spawn) {
		//e_type = random_range(0, 3);
		e_type = lvls[global.current_level][e_index];
		enemy_sprite_height = sprite_get_height(enemies[e_type].spr);
		enemy_sprite_width = sprite_get_width(enemies[e_type].spr);
		// enemy spawn positions
		num_of_lanes = room_height div enemy_sprite_height;
		lane = irandom_range(0, num_of_lanes-1);
		x_spawn = room_width + enemy_sprite_width/2;
		y_spawn = (lane * enemy_sprite_height) + (enemy_sprite_height * 0.75);
		enemy = spawn_enemy(e_type, x_spawn, y_spawn);
		e_index++;
		enemies_to_spawn--;
		spawn = false;
		if (enemies_to_spawn) {
			alarm[0] =  game_get_speed(gamespeed_fps) * spawn_rate;
		}
	}

	if (!enemies_to_spawn and !spawn and global.current_level < array_length(lvls) and !instance_exists(obj_enemy)) {
		alarm[1] = game_get_speed(gamespeed_fps) * time_between_lvls;
		global.current_level++;
		if (global.current_level != array_length(lvls)){
		enemies_to_spawn = array_length(lvls[global.current_level]);
		} else {
			enemies_to_spawn = 0;
		}
		e_index = 0;
	}

	if (global.current_level >= array_length(lvls) ) {
		global.game_over = true;
		global.current_level = 0;
		e_index = 0;
	}
} else {
	while(spawn) {
		e_chooser = random_range(0, 99);
		if (e_chooser > 95) {
			e_type = EnemyTypes.str;
		} else if (e_chooser < 95 and e_chooser > 55) {
			e_type = EnemyTypes.spd;
		} else {
			e_type = EnemyTypes.nrm;
		}
		enemy_sprite_height = sprite_get_height(enemies[e_type].spr);
		enemy_sprite_width = sprite_get_width(enemies[e_type].spr);
		// enemy spawn positions
		num_of_lanes = room_height div enemy_sprite_height;
		lane = irandom_range(0, num_of_lanes-1);
		x_spawn = room_width + enemy_sprite_width/2;
		y_spawn = (lane * enemy_sprite_height) + (enemy_sprite_height * 0.75);
		enemy = spawn_enemy(e_type, x_spawn, y_spawn);
		spawn = false;
		if (global.player_health > 0) {
			alarm[0] =  game_get_speed(gamespeed_fps) * spawn_rate;
		}
	}
}
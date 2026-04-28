if (!global.pause) {
	// player movement
	vdir = keyboard_check(ord("S")) - keyboard_check(ord("W"));

	y += vdir*spd;
	y = clamp(y, sprite_height/2, room_height-(sprite_height/2));

	// shootings
	bullet_spawn_offset = 2;
	shoot_timer = 0.35;
	if (mouse_check_button(mb_left) and !shoot_cooldown) {
		if (power_up_active == "shotgun") { // shotgun powerup
			shoot_timer = 1;
			b_spread = 15;
			
			// create bullets
			m_bullet = instance_create_layer(x + sprite_width/2 + bullet_spawn_offset, y, "Instances", obj_bullet);
			m_bullet.dmg = 4;
			t_bullet = instance_create_layer(x + sprite_width/2 + bullet_spawn_offset, y, "Instances", obj_bullet);
			with (t_bullet) {
				dir += other.b_spread;
				image_blend = c_orange;
				x_spd = lengthdir_x(spd, dir);
				y_spd = lengthdir_y(spd, dir);
				image_angle = dir;
				dmg = 4;
			}
		
			b_bullet = instance_create_layer(x + sprite_width/2 + bullet_spawn_offset, y, "Instances", obj_bullet);
			with (b_bullet) {
				dir -= other.b_spread;
				image_blend = c_red;
				x_spd = lengthdir_x(spd, dir);
				y_spd = lengthdir_y(spd, dir);
				image_angle = dir;
				dmg = 4;
			}
		
		} else if (power_up_active == "rapidfire") { // rapidfire powerup
			with (instance_create_layer(x + sprite_width/2 + bullet_spawn_offset, y, "Instances", obj_bullet)) {
				dmg = 1;
			}
			shoot_timer = 0.2;
		} else if (power_up_active == "damage boost") {
			with (instance_create_layer(x + sprite_width/2 + bullet_spawn_offset, y, "Instances", obj_bullet)) {
				dmg = 6;
			}
		} else if (power_up_active = noone) {
			instance_create_layer(x + sprite_width/2 + bullet_spawn_offset, y, "Instances", obj_bullet);
		}
		
		shoot_cooldown = true;
		alarm[0] = game_get_speed(gamespeed_fps) * shoot_timer;
	}

}

if (global.player_health <= 0) {
	global.game_over = true;
}

if (global.pause and alarm[0] > 0) {
	alarm[0]++;
}
if (global.pause and alarm[1] > 0) {
	alarm[1]++;
}
// player movement
vdir = keyboard_check(ord("S")) - keyboard_check(ord("W"));

y += vdir*spd;
y = clamp(y, sprite_height/2, room_height-(sprite_height/2));

// shootingss
bullet_spawn_offset = 2;

if (mouse_check_button(mb_left) and !shoot_cooldown) {
	shoot_cooldown = true;
	instance_create_layer(x + sprite_width/2 + bullet_spawn_offset, y, "Instances", obj_bullet);
	alarm[0] = game_get_speed(gamespeed_fps) * 0.25;
}

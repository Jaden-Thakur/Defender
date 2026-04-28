x -= spd;
if (dmg <= 0) {
	with (obj_player) {
		power_up_active = other.type;
		alarm[1] = game_get_speed(fps) * other.duration;
	}
	instance_destroy();
}
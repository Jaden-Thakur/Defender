function enemy_type(_spd, _def, _dmg, _spr, _type) constructor {
	spd = _spd;
	def = _def;
	dmg = _dmg;
	spr = _spr;
	type = _type
}

global.nrm_enemy = new enemy_type(3, 2, 2, spr_enemy_1, "nrm");
global.spd_enemy = new enemy_type(6, 1, 1, spr_enemy_2, "spd");
global.str_enemy = new enemy_type(1, 6, 4, spr_enemy_3, "str");
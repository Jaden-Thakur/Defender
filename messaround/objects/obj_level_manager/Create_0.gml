global.current_level = 0;
global.highest_level = 0;
global.won = false;

spawn = true;
spawn_rate = 1; //seconds to spawn enemy
time_between_lvls = 5;

enum EnemyTypes {
	nrm,
	spd,
	str
}

enum PowerUps {
	shotgun, 
	dmg_boost,
	rapidfire,
}

enemies = [global.nrm_enemy, global.spd_enemy, global.str_enemy]
pUps = [global.shotgun, global.dmg_boost, global.rapid_fire];

function spawn_enemy(_type, _x, _y) {
	new_enemy = instance_create_layer(_x, _y, "Instances", obj_enemy);
	new_enemy.type = enemies[_type].type;
	new_enemy.def = enemies[_type].def;
	new_enemy.spd = enemies[_type].spd;
	new_enemy.dmg = enemies[_type].dmg;
	new_enemy.spr = enemies[_type].spr;
	new_enemy.pts = enemies[_type].pts;
	
	return new_enemy;
}

if (global.mode = "story") {

	//LVL SPAWN ORDERS
	lvls = 
	[
		[EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm],
		[EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.spd, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.spd, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm],
		[EnemyTypes.spd, EnemyTypes.spd, EnemyTypes.spd, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.spd, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm,  EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.spd, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm],
		[EnemyTypes.spd, EnemyTypes.spd, EnemyTypes.spd, EnemyTypes.str, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm,  EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.str, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.nrm],
		[EnemyTypes.spd, EnemyTypes.spd, EnemyTypes.spd, EnemyTypes.spd, EnemyTypes.str, EnemyTypes.spd, EnemyTypes.spd, EnemyTypes.spd, EnemyTypes.spd, EnemyTypes.spd,  EnemyTypes.spd, EnemyTypes.spd, EnemyTypes.spd, EnemyTypes.spd, EnemyTypes.nrm, EnemyTypes.nrm, EnemyTypes.str],
	];


	e_index = 0;
	enemies_to_spawn = array_length(lvls[global.current_level]);
} 

function spawn_powerup(_type, _x, _y) {
	new_powerup = instance_create_layer(_x, _y, "Instances", obj_power_up);
	with(new_powerup) {
		index = other.pUps[_type].sprite;
		duration = other.pUps[_type].duration;
		type = other.pUps[_type].type;
	}
	
	return new_powerup;
	
}
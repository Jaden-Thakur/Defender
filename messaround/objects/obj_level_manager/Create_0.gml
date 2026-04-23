global.current_level = 0;
global.game_over = false;

spawn = true;
spawn_rate = 1; //seconds to spawn enemy
time_between_lvls = 5;

enum EnemyTypes {
	nrm,
	spd,
	str
}

enemies = [global.nrm_enemy, global.spd_enemy, global.str_enemy]

function spawn_enemy(_type) {
	new_enemy = instance_create_layer(x_spawn, y_spawn, "Instances", obj_enemy);
	new_enemy.type = enemies[_type].type;
	new_enemy.def = enemies[_type].def;
	new_enemy.spd = enemies[_type].spd;
	new_enemy.dmg = enemies[_type].dmg;
	new_enemy.spr = enemies[_type].spr;
	
	return new_enemy;
}

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
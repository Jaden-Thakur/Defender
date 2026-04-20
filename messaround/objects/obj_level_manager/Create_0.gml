global.current_level = 1;

enemies_to_spawn = 10;




spawn = true;
spawn_rate = 1; //seconds to spawn enemy

enum EnemyTypes {
	nrm_enemy,
	spd_enemy,
	str_enemy
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

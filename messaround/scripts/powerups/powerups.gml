function powerup(_spr, _type, _dur) constructor {
	sprite = _spr;
	type = _type;
	duration = _dur;
}

global.shotgun = new powerup(0, "shotgun", 5);
global.dmg_boost = new powerup(1, "damage boost", 3);
global.rapid_fire = new powerup(2, "rapidfire", 3);


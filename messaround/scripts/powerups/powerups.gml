function powerup(_spr, _type, _dur) constructor {
	sprite = _spr;
	type = _type;
	duration = _dur;
}

shotgun = new powerup(0, "shotgun", 20);
dmg_boost = new powerup(1, "damage boost", 10);
rapid_fire = new powerup(2, "rapidfire", 10);


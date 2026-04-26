x -= spd;

if ( def <= 0) {
	if (global.mode =="endless") {
		global.curr_score += pts;
	}
		
	instance_destroy();
}
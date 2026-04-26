hover += keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));
if (hover > num_options-1) hover = num_options - 1;
if (hover < 0) hover = 0;

if ( keyboard_check_pressed(vk_enter) ) {
	if (array_length(options[hover]) == 2) {
		var _func = options[hover][1];
		if (_func != -1) _func();
	}
}

//mxPrev = mouse_x;wsw
//myPrev = mouse_y;
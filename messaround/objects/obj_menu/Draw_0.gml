draw_set_halign(fa_left);
draw_set_valign(fa_top);
var h_box_padding = 5;

var _desc = (!description == -1);
for (var i = 0; i < (num_options + _desc); i++) {
	if (i == 0) and _desc {
		draw_text(x, y, description);
	} else {
		var _string = options[i - _desc][0]
		if (hover == i - _desc) {
			var t_width = string_width(_string);  
			var t_height = menu_line_height;
			draw_rectangle(x-h_box_padding, y - h_box_padding + i * t_height, x + t_width + h_box_padding, y + t_height + i * t_height + h_box_padding, 1);
		}
		
		draw_text(x, y + i * menu_line_height, _string);
	}
}
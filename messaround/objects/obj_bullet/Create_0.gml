dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
spd = 10;
x_spd = lengthdir_x(spd, dir);
y_spd = lengthdir_y(spd, dir);
dmg = 1;

xscale = 0.75;
yscale = 0.25;

image_angle = dir;
image_xscale = image_xscale * xscale
image_yscale = image_yscale * yscale
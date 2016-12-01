///scr_shoot_gun
bulletDir = point_direction(x, y, mouse_x, mouse_y)
instance_create(x + lengthdir_x(15 ,bulletDir), y + lengthdir_y(15, bulletDir), obj_bullet);

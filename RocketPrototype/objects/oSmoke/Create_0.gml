/// @desc ?
global.p1 = part_type_create();
part_type_shape(global.p1, pt_shape_disk);
part_type_size(global.p1, 0.2, 0.5, 0.1, 0);
part_type_scale(global.p1, 0.1, 0.1);
part_type_colour1(global.p1, $A898FF);
part_type_alpha2(global.p1, 5, 0);
part_type_speed(global.p1, 0.25, 0.5, 0, 0);
part_type_direction(global.p1, 0, 90, 0, 20);
part_type_gravity(global.p1, 0.20, 80);
// part_type_orientation(global.p1, 0, 0, 0, 0, 1);
// part_type_blend(global.p1, 1);
part_type_life(global.p1, 30, 30);

global.Sname = part_system_create();

alarm[0] = 30;
/// @description Insert description here

nextRoom = rom_level2;
playedOnce = false;


//ParticleSystem1
_ps = part_system_create();
part_system_draw_order(_ps, true);
part_system_depth(_ps, depth+1);
//Emitter1
_ptype1 = part_type_create();
part_type_shape(_ptype1, pt_shape_pixel);
part_type_size(_ptype1, 1, 1, 0, 0);
part_type_scale(_ptype1, 1, 1);
part_type_speed(_ptype1, 0, 0.1, 0, 0);
part_type_direction(_ptype1, 80, 100, 0, 0);
part_type_gravity(_ptype1, 0, 90);
part_type_orientation(_ptype1, 0, 0, 0, 4, true);
part_type_colour3(_ptype1, $3D5243, $3D5243, $3D5243);
part_type_alpha3(_ptype1, 1, 1, 1);
part_type_blend(_ptype1, false);
part_type_life(_ptype1, 40, 50);

_pemit1 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit1, -1.5, 1.5, -3.5, -0.5, ps_shape_rectangle, ps_distr_invgaussian);
part_emitter_stream(_ps, _pemit1, _ptype1, 1);

part_system_position(_ps, x,y-8);
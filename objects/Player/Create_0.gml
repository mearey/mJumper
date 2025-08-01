/// @description Insert description here
// You can write your code in this editor
jumps = max_jumps

fixture = physics_fixture_create();
physics_fixture_set_box_shape(fixture, sprite_width / 2, sprite_height / 2);
physics_fixture_set_density(fixture, 0.5);
physics_fixture_set_restitution(fixture, 0.1);
physics_fixture_set_friction(fixture, 0.2);
physics_fixture_set_collision_group(fixture, 1)
physics_fixture_bind(fixture, id);

function jump() {
	var dir = point_direction(x,y,mouse_x, 0)
	var xdiff = x-mouse_x
	phy_speed_x = 0
	phy_speed_y = 0
	physics_apply_force(x+xdiff/100,y, lengthdir_x(speed,dir)*2, lengthdir_y(speed,dir))	
}

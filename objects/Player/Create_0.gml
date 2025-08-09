/// @description Insert description here
// You can write your code in this editor
audio_play_sound(SquareOne,1,true)

ini_open("save")
max_jumps = ini_read_real("stats", "jumps", max_jumps)
score = ini_read_real("stats", "points", score)
speed = ini_read_real("stats", "speed", speed)
econ = ini_read_real("stats", "econ", econ)
ini_close()

jumps = max_jumps

arrow_dist = 0

fixture = physics_fixture_create();
physics_fixture_set_box_shape(fixture, sprite_width / 2, sprite_height / 2);
physics_fixture_set_density(fixture, 0.5);
physics_fixture_set_restitution(fixture, 0.1);
physics_fixture_set_friction(fixture, 0.2);
physics_fixture_set_collision_group(fixture, 1)
physics_fixture_bind(fixture, id);

function jump() {
	
	var dir = point_direction(x,y,mouse_x, camera_get_view_y(globals.cam))
	var xdiff = x-mouse_x
	phy_speed_x = 0
	phy_speed_y = 0
	physics_apply_force(x+xdiff/100,y, lengthdir_x(speed,dir)*2, lengthdir_y(speed,dir))	
}

save = function () {
	ini_open("save")
	ini_write_real("stats", "jumps", max_jumps)
	ini_write_real("stats", "speed", speed)
	ini_write_real("stats", "points", score)
	ini_write_real("stats", "econ", econ)
	ini_close()
}
/// @description Insert description here
// You can write your code in this editor
if random(1) < 0.05*global.world_speed {
	instance_create_depth(random_range(8,room_width-8),camera_get_view_y(globals.cam)-8,Player.depth+1,Particle)
}
/// @description Insert description here
// You can write your code in this editor


if Interact_held() && jumps > 0{
	var dir = point_direction(x,y,mouse_x, camera_get_view_y(globals.cam))
	arrow_dist = lerp(arrow_dist, 5, 0.1)
	draw_sprite_ext(Arrow, 0, x, y, 1, arrow_dist, dir-90, c_white, 1)
}
glow()
draw_self()
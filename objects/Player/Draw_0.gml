/// @description Insert description here
// You can write your code in this editor


if is_aiming {
	arrow_dist = lerp(arrow_dist, 5, 0.1)
	draw_sprite_ext(Arrow, 0, x, y, 1, arrow_dist, aim_direction-90, c_white, 1)
}
glow()
draw_self()
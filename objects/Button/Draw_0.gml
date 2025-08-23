/// @description Insert description here
// You can write your code in this editor
if hovered {
	
	image_index = 1
} else {
	image_index = 0	
}
draw_sprite_ext(sprite_index, image_index, x,y,image_xscale, image_yscale, image_angle, image_blend, image_alpha)
draw_number_with_commas(x,y-2,text,0.75)


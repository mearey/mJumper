// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function glow(){
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*1.2*image_alpha, image_yscale*1.2*image_alpha, image_angle, c_white, image_alpha*0.2)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*1.4*image_alpha, image_yscale*1.4*image_alpha, image_angle, c_white, image_alpha*0.2)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*1.6*image_alpha, image_yscale*1.6*image_alpha, image_angle, c_white, image_alpha*0.2)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*2*image_alpha, image_yscale*2*image_alpha, image_angle, c_white, image_alpha*0.1)
}
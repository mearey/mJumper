/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_text_transformed(x,y+20,cost,0.5,0.5,image_angle)	

var colors = [c_white, c_lime, c_aqua, c_yellow];

for (var i=0; i<points; i+=1) {
	var offset = (i % 5) * 16;
	var color = colors[i div 5 % array_length(colors)]
	draw_sprite_ext(Bar, 0, x+48+offset,y,1,1,0,color,1)	
	draw_sprite_ext(Bar, 0, x-48-offset,y,1,1,0,color,1)	
}
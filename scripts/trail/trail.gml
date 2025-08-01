// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function trail(sprite=ParticleSprite, rotation=0) {
	instance_create_depth(x,y,depth+1,trailobj,{sprite_index:sprite, image_angle:rotation})
}
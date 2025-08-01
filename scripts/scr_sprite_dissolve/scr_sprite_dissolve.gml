/// @description scr_sprite_dissolve(Dissolve Dir, Dissolve Speed, Chunk Size, Shrink, Shrink amt, Gravity, Fade, Fade amt, Spin, Life);
/// @param Dissolve Dir
/// @param  Dissolve Speed
/// @param  Chunk Size
/// @param  Shrink
/// @param  Shrink amt
/// @param  Gravity
/// @param  Fade
/// @param  Fade amt
/// @param  Spin
/// @param  Life
function scr_sprite_dissolve(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {

	/* Get sprite width and height
	This is used to run through the for loop
	and get each peice of the sprite
	*/
	ww = sprite_get_width(sprite_index);
	hh = sprite_get_height(sprite_index);


	/* Get sprite offset
	This is used to make sure that the particles being
	created are ALWAYS aligned with the the sprite
	*/
	xoff = sprite_get_xoffset(sprite_index);
	yoff = sprite_get_yoffset(sprite_index);

	// Chunk Size
	chunksize = argument2;

	// Dissolve speed
	dissolve_speed = argument1;

	// Dissolve Direction
	dir = argument0;                // 0 = up, 1 = down, 2 = right, 3 = left

	// Create the particle
	for (i = 0; i < ww; i += chunksize) {
	    for (j = 0; j < hh; j += chunksize) {
	        particle = instance_create((x - xoff) + i, (y - yoff) + j, obj_dissolve_particle);
	        particle.spr = sprite_index;
	        particle.size = chunksize;
	        if (dir == 0) particle.timer1 = ((hh - j - chunksize) / hh) * dissolve_speed;
	        if (dir == 1) particle.timer1 = (j / hh) * dissolve_speed;
	        if (dir == 2) particle.timer1 = (i / ww) * dissolve_speed;
	        if (dir == 3) particle.timer1 = ((ww - i - chunksize) / ww) * dissolve_speed;
	        particle.shrinkon = argument3;
	        particle.shrink_amt = argument4;
	        particle.grav = argument5;
	        particle.dir = argument0;
	        particle.fadeon = argument6;
	        particle.fade_amt = argument7;
	        particle.rotate_speed = argument8;
	        particle.life = argument9;
	        particle.xx = i;
	        particle.yy = j;
	    }
	}


}

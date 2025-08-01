/// @description Insert description here
// You can write your code in this editor
if y > room_height {
	instance_destroy(self)	
}

if image_alpha > 1 {
	image_alpha = lerp(image_alpha, 1, 0.1)
	if image_alpha <= 1.2 && destroy {
		instance_destroy(self)	
	}
}

phy_position_y+=speed*global.world_speed
phy_rotation+=rot*global.world_speed
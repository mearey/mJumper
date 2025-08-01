/// @description Insert description here
// You can write your code in this editor
if y >= room_height - 10 {
	jumps=max_jumps
	multiplier = 1
}

if Interact_held(){
	var col = noone
	with Particle {
		if point_distance(x,y,other.x,other.y) < 25 {
			col	= self
		}
	}
	if col != noone {
		global.world_speed = lerp(global.world_speed, 0.2, 0.1)	
		phy_position_x = lerp(phy_position_x, col.x, 0.1)
		phy_position_y = lerp(phy_position_y, col.y, 0.1)
	}
} else {
	global.world_speed = 1
}
physics_world_update_speed(global.world_speed)

if Interact_up() {
	var col = noone
	with Particle {
		if point_distance(x,y,other.x,other.y) < 25 {
			col	= self
		}
	}
	if col != noone {
		if !col.destroy {
			jumps=max_jumps
			col.flash()
		}
	}
	if jumps >= 1 {
		jump()
		jumps-=1
	}
}

trail(sprite_index,image_angle)


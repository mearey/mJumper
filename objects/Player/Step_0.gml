/// @description Insert description here
// You can write your code in this editor

//music generation
if (!audio_is_playing(current_sound)) {
    // Pick the next random sound
	var last = current_sound
	do
    current_sound = choose(c1, c2, c3, c4);
	until current_sound != last
    audio_play_sound(current_sound, 1, false);
}

if phy_speed_y > 10 {
	var col = noone
	with Particle {
		if abs(y - other.y) < 20 {
			col	= self
		}
	}
	if col != noone {
		if !col.destroy {
			col.flash()
		}
	}
}

if y >= room_height - 10 {
	if jumps != max_jumps {
		save()	
	}
	jumps=max_jumps
	multiplier = 1
}

// Drag aiming system
if Interact_down() {
	// Start aiming
	is_aiming = true
	aim_start_x = mouse_x
	aim_direction = 90 // Default upward direction
}

if is_aiming && Interact_held() {
	// Calculate direction based on drag distance
	var drag_distance = mouse_x - aim_start_x
	var max_drag = 500 // Maximum drag distance for full direction change
	var direction_change = clamp(-drag_distance / max_drag, -1, 1) * 90 // -180 to 180 degrees
	
	// Convert to 0-360 degree range (90 degrees is straight up)
	aim_direction = 90 + direction_change*1.5
	if aim_direction < 0 {
		aim_direction += 360
	}
	var col=noone
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
	arrow_dist = 0
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
	is_aiming = false
}

trail(sprite_index,image_angle)


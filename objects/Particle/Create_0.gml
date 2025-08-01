/// @description Insert description here
// You can write your code in this editor
physics_apply_torque(random_range(-1,1))
physics_apply_force(x,y,0,-Player.speed/2)

destroy = false

function flash() {
	image_alpha = 2	
	destroy = true
	Player.multiplier += 1
	instance_create_depth(x,y,depth,pluscore,{number:points})
}

rot = random_range(-speed,speed)
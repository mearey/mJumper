/// @description Insert description here
// You can write your code in this editor
physics_apply_torque(random_range(-1,1))
physics_apply_force(x,y,0,-Player.speed/2)

destroy = false

function flash() {
	destroy = true
	var sound = choose(_1,_2,_3,_4)
	audio_play_sound(sound, 1, false)
	image_alpha = 2
	Player.multiplier += 1*Player.econ
	instance_create_depth(x,y,depth,pluscore,{number:points, image_blend,image_blend})
}

rot = random_range(-speed,speed)
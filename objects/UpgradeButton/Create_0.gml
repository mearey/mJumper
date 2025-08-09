/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
ini_open("save")
points = ini_read_real("upgrades", text, points)
cost = ini_read_real("upgrades", text+"_c", cost)
ini_close()

on_click = function () {
	if score >= cost {
		score -= cost
		points += 1
		cost = ceil(scaling*cost)
		stat_increase()
		save()
		Player.save()
	}
}

stat_increase = function () {
	
}

save = function () {
	ini_open("save")
	ini_write_real("upgrades", text, points)
	ini_write_real("upgrades", text+"_c", cost)
	ini_close()	
}
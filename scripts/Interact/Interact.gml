// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Interact_down(){
	with Button {
		if hovered {
			return -1
		}
	}
	if mouse_check_button_pressed(mb_left) {
		return true
	}
	return false
}

function Interact_up(){
	with Button {
		if hovered {
			return -1
		}
	}
	if mouse_check_button_released(mb_left) {
		return true
	}
	return false
}

function Interact_held() {
	with Button {
		if hovered {
			return -1
		}
	}
	if mouse_check_button(mb_left) {
		return true
	}
	return false
}
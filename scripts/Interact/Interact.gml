// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Interact_down(){
	if mouse_check_button_pressed(mb_left) {
		with Button {
			if hovered {
				return -1
			}
		}
		return true
	}
	return 0
}

function Interact_up(){
	if mouse_check_button_released(mb_left) {
		with Button {
			if hovered {
				return -1
			}
		}
		return true
	}
	return 0
}

function Interact_held() {
	if mouse_check_button(mb_left) {
		with Button {
			if hovered {
				return -1
			}
		}
		return true
	}
	return 0
}
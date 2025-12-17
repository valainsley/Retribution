var _up = keyboard_check_pressed(vk_up)
var _down = keyboard_check_pressed(vk_down)
var _select = keyboard_check_pressed(vk_enter)

var _move = _down - _up;
if _move != 0 {
	index += _move
	
	var _size = array_length(menu);
	if index < 0 {
		index = _size - 1;
	} else if index >= _size {
		index = 0;
	}
}
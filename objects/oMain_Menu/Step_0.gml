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

if _select {
	switch (index) {
		case 0: //Arcade mode
			room_goto_next();
		break
		
		case 1: //Versus mode
			global.opp_type = CONT_P2;
			room_goto_next();
		break
		
		case 3: //Test menu
			room_goto(test_menu);
		break
		
		case 4:
			game_end();
		break
		
		default:
			room_goto_next();
		break
	}
}
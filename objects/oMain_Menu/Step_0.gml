var _up = InputPressed(INPUT_VERB.UP)
var _down = InputPressed(INPUT_VERB.DOWN)
var _start = InputPressed(INPUT_VERB.START)

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

if _start {
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
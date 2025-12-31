var _up = keyboard_check_pressed(vk_up)
var _down = keyboard_check_pressed(vk_down)
var _select = keyboard_check_pressed(vk_enter)

var _move = _down - _up;
if _move != 0 {
	index += _move
	
	var _size = array_length(menu[sub_menu]);
	if index < 0 {
		index = _size - 1;
	} else if index >= _size {
		index = 0;
	}
}

if _select {
	switch (sub_menu) {
		case MAIN: //Test menu
			switch (index) {
				case 0: 
					sub_menu = 1;
					index = 0;
				break
		
				case 1: 
					sub_menu = 2;
					index = 0;
				break
		
				case 3:
					sub_menu = 3;
					index = 0;
				break
		
				case 4:
					room_goto(main_menu);
				break
				
				case 5:
					room_goto(main_menu);
				break
		
				case 6:
					room_goto(main_menu);
				break
		
				default:
					room_goto(main_menu);
				break
			}
		case GAMEPLAY: 
			switch (index) {
				case 0: 
					sub_menu = 0;
					index = 0;
				break
		
				case 1:
					sub_menu = 0;
					index = 0;
				break
		
				case 3:
					sub_menu = 0;
					index = 0;
				break
				
				case 2:
					sub_menu = 0;
					index = 0;
				break
		
				case 4:
					sub_menu = 0;
					index = 0;
				break
		
				case 5:
					sub_menu = 0;
					index = 0;
				break
		
				default:
					sub_menu = 0;
					index = 0;
				break
			}
		case GRAPHICS: //Graphics settings
			switch (index) {
				case 0:
					sub_menu = 0;
					index = 0;
				break
		
				case 1:
					sub_menu = 0;
					index = 0;
				break
				
				case 2:
					sub_menu = 0;
					index = 0;
				break
		
				case 3:
					sub_menu = 0;
					index = 0;
				break
		
				case 4:
					sub_menu = 0;
					index = 0;
				break
				
				case 5:
					sub_menu = 0;
					index = 0;
				break
				
				case 6:
					sub_menu = 0;
					index = 0;
				break
				
				case 7:
					sub_menu = 0;
					index = 0;
				break
				
				case 8:
					sub_menu = 0;
					index = 0;
				break
		
				case 9:
					sub_menu = 0;
					index = 0;
				break
		
				default:
					sub_menu = 0;
					index = 0;
				break
			}
		case SOUND:
			switch (index) {
				case 0:
					sub_menu = 0;
					index = 0;
				break
		
				case 1:
					sub_menu = 0;
					index = 0;
				break
		
				case 2:
					sub_menu = 0;
					index = 0;
				break
		
				case 3:
					sub_menu = 0;
					index = 0;
				break
		
				default:
					sub_menu = 0;
					index = 0;
				break
			}
	}
}
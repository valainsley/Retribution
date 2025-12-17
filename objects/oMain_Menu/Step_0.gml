if keyboard_check_pressed(vk_up) {
	cur_index -- ;
}

if keyboard_check_pressed(vk_down) {
	cur_index ++ ;
}

clamp(cur_index, 0, array_length(menu))

if keyboard_check_pressed(vk_enter) {
	switch (cur_index) {
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
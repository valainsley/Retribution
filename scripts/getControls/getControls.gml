function controlSetup()
{
	bufferTime = 3;
	jumpKeyBuff = 0;
	jumpKeyBuffTime = 0;
}

function getControls()
{
	//Key mappinng
	rightKey = (controller==CONT_P1)?keyboard_check(vk_right):keyboard_check(ord("D"));
	leftKey = (controller==CONT_P1)?keyboard_check(vk_left):keyboard_check(ord("A"));
	jumpKeyPressed = (controller==CONT_P1)?keyboard_check_pressed(vk_up):keyboard_check_pressed(ord("W"));
	jumpKey = (controller==CONT_P1)?keyboard_check(vk_up):keyboard_check(ord("W"));
	lowPunch = (controller==CONT_P1)?keyboard_check_pressed(ord("I")):keyboard_check_pressed(ord("R"));
	medPunch = (controller==CONT_P1)?keyboard_check_pressed(ord("O")):keyboard_check_pressed(ord("T"));
	hiPunch = (controller==CONT_P1)?keyboard_check_pressed(ord("P")):keyboard_check_pressed(ord("Y"));
	lowKick = (controller==CONT_P1)?keyboard_check_pressed(ord("J")):keyboard_check_pressed(ord("F"));
	medKick = (controller==CONT_P1)?keyboard_check_pressed(ord("K")):keyboard_check_pressed(ord("G"));
	hiKick = (controller==CONT_P1)?keyboard_check_pressed(ord("L")):keyboard_check_pressed(ord("H"));
	
	//Jumping functions
	if jumpKeyPressed
	{
		jumpKeyBuffTime = bufferTime;
	}
	
	if jumpKeyBuffTime > 0
	{
		jumpKeyBuff = 1;
		jumpKeyBuffTime --;
	} else {
		jumpKeyBuff = 0;
	}
		
	//Combo funcions
	if 
}
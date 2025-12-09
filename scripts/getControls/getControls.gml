function controlSetup()
{
	bufferTime = 3;
	jumpKeyBuff = 0;
	jumpKeyBuffTime = 0;
}

function getControls()
{
	rightKey = (controller==CONT_P1)?keyboard_check(vk_right):keyboard_check(ord("D"));
	leftKey = (controller==CONT_P1)?keyboard_check(vk_left):keyboard_check(ord("A"));
	jumpKeyPressed = (controller==CONT_P1)?keyboard_check_pressed(vk_up):keyboard_check_pressed(ord("W"));
	jumpKey = (controller==CONT_P1)?keyboard_check(vk_up):keyboard_check(ord("W"));
	
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
}
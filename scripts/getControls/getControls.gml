function controlSetup()
{
	bufferTime = 3;
	jumpKeyBuff = 0;
	jumpKeyBuffTime = 0;
}

function getControls()
{
	rightKey = keyboard_check(vk_right);
	leftKey = keyboard_check(vk_left);
	jumpKeyPressed = keyboard_check_pressed(vk_up);
	jumpKey = keyboard_check(vk_up);
	
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
function handleSprites(){
	if moveDir = 1
	{
		sprite_index = sp_walk
		image_speed = 1
	}
	
	if moveDir = -1
	{
		sprite_index = sp_walk
		image_speed = -1
	}
	
	if moveDir = 0 && sprite_index != sGlaciusAxe
	{
		sprite_index = sp_idle
	}
	
	if moveDir = -1 && keyboard_check_pressed(ord("P"))
	{
		xspeed = 0;
		sprite_index = sGlaciusAxe;
		moveDir = moveDir;
	}
		
}
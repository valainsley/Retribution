function handleSprites(){
	//Get face
	image_xscale = (opponent.x > x)?1:-1
	face = image_xscale
	
	//Sprite changes
	if moveDir = 1
	{
		sprite_index = sp_walk
		image_speed = (face==1)?1:-1
	}
	
	if moveDir = -1 && attacking = false
	{
		sprite_index = sp_walk
		image_speed = (face==1)?-1:1
	}
	
	if moveDir = 0 && attacking = false && onGround = true
	{
		sprite_index = sp_idle
	}
	
	if moveDir = -1 && keyboard_check_pressed(ord("P"))
	{
		attacking = true;
		xspeed = 0;
		sprite_index = sp_bNorm;
		image_speed = abs(image_speed)
		if image_index = 12
		{
			attacking = false;
		}
		
	}
	
	if !onGround
	{
		sprite_index = sp_jump
		mask_index = sp_idle
	}
		
}
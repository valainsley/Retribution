function handleAnim(){
//Sprite changes
	switch(state)
	{
		case STATE_FREE:
			if moveDir = 1
			{
				sprite_index = sp_walk
				image_speed = (face==1)?1:-1
			}
	
			if moveDir = -1
			{
				sprite_index = sp_walk
				image_speed = (face==1)?-1:1
			}
	
			if moveDir = 0 && onGround = true
			{
				sprite_index = sp_idle
			}
	
			if !onGround
			{
				if sign(yspeed) > 0
				{
					sprite_index = sp_jump
				} else {
					sprite_index = sp_fall
				}
				mask_index = sp_idle
			}
			
		break
		
		case STATE_ATK:
			if !can_attack
			{
				exit
			}
			
			if onGround
			{
				sprite_index = sp_atk[atk_type]
				image_speed = 1
			} else {
				sprite_index = sp_airAtk[atk_type]
				image_speed = 1
			}
	}
}
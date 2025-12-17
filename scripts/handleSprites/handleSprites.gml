function handleSprites(){
	//Get face
	image_xscale = (opponent.x > x)?1:-1
	face = image_xscale
	
	//Assign sprites
	switch(argument0)
	{
		case GLACIUS:
			sp_idle = sGlaciusIdle
			sp_walk = sGlaciusWalk
			sp_crouch = sGlaciusCrouched
			sp_jump = sGlaciusJump
			sp_fall = sGlaciusFalling
			sp_land = sGlaciusLanding
			sp_atk = [sGlacius_lPunch, sGlacius_mPunch, sGlacius_hPunch, sGlacius_lKick, sGlacius_mKick, sGlacius_hKick]
			sp_airAtk = [sGlacius_alPunch, sGlacius_amPunch, sGlacius_ahPunch, sGlacius_alKick, sGlacius_amKick, sGlacius_ahKick]
		break
		
		case KITANA:
			sp_idle = Kitana_Idle
			sp_walk = Kitana_Fwd
			sp_jump = Kitana_Jump
			sp_fall = Kitana_Jump
			
		break
	}
}
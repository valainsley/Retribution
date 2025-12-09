//Get Inputs
getControls();

//X Movement
	//Direction
	moveDir = rightKey - leftKey

	//Get XSpeed
	xspeed = moveDir * moveSpd;

//X Collision
var _subPixel = .5;
if place_meeting(x + xspeed, y, scrn_bar)
	{
	
		//Move up to wall precisely
		var _pixelCheck = _subPixel * sign(xspeed);
		while !place_meeting(x + _pixelCheck, y, scrn_bar)
		{
			x += _pixelCheck;
		}
	
		//Set xspeed to 0 to collide
		xspeed = 0;
	}

	//Move
	x += xspeed;

//Y Movement
	//Gravity
	yspeed += grav;
	
	//Jump
	if jumpKeyBuff && jumpCount < jumpMax
	{
		//Reset buffer
		jumpKeyBuff = false;
		jumpKeyBuffTime = 0;
		
		//Increase number of performed jumps
		jumpCount++;
		
		//Set jump hold timer
		jumpHoldTimer = jumpHoldFrames;
	}
	
	//Cut off jump
	if !jumpKey
	{
		jumpHoldTimer = 0;
	}
	
	//Jump based on timer/button hold
	if jumpHoldTimer > 0
	{
		//Constantly set yspeed to jump speed
		yspeed = jspeed;
		//Count down the timer
		jumpHoldTimer--;
	}
	
	//Y Collision
	var _subPixel = .5;
	if place_meeting(x, y + yspeed, Pit_Bridge)
	{
		var _pixelCheck = _subPixel * sign(yspeed);
		while !place_meeting(x, y + _pixelCheck, Pit_Bridge)
		{
			y += _pixelCheck;
		}
		
		//Set yspeed to 0 to collide
		yspeed = 0;
	}
	
	//Set if player is on ground
	if yspeed >= 0 && place_meeting(x, y+1, Pit_Bridge)
	{
		onGround = true;
	} else {
		onGround = false;
	}
	
	//Reset jump vars
	if onGround
	{
		jumpCount = 0;
	}
	
	if yspeed > termVel {
		yspeed = termVel;
	}
	
	//Move
	y += yspeed;
	
handleSprites();


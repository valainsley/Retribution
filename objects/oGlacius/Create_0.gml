//Assign sprites
sp_idle = sGlaciusIdle
sp_walk = sGlaciusWalk
sp_crouch = sGlaciusCrouch
sp_jump = sGlaciusJump

//Movement
moveDir = 0;
moveSpd = 2;
xspeed = 0;
yspeed = 0;

//Jumping
grav = .275;
termVel = 4;
jspeed = -3.15;
jumpMax = 1;
jumpCount = 0;
jumpHoldTimer = 0;
jumpHoldFrames = 18;
onGround = true;

controlSetup();
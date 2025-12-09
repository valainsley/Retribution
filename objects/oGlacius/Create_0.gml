//Assign sprites
sp_idle = sGlaciusIdle
sp_walk = sGlaciusWalk
sp_crouch = sGlaciusCrouch
sp_jump = sGlaciusJump
sp_bNorm = sGlaciusAxe

//Movement
moveDir = 0;
moveSpd = 2;
xspeed = 0;
yspeed = 0;

//Jumping
grav = 3;
termVel = 4;
jspeed = -7.15;
jumpMax = 1;
jumpCount = 0;
jumpHoldTimer = 0;
jumpHoldFrames = 18;
onGround = true;

controlSetup();

//State vars
attacking = false;
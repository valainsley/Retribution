//Assign sprites
sp_idle = Kitana_Idle
sp_walk = Kitana_Fwd
sp_jump = Kitana_Jump
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
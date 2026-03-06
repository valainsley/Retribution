

//Movement
moveDir = 0;
moveSpd = 2;
xspeed = 0;
yspeed = 0;

//Jumping
grav = GRAVITY_FORCE;
termVel = 6.5;
jspeed = JUMP_FORCE;
jumpMax = 1;
jumpCount = 0;
jumpHoldTimer = 0;
jumpHoldFrames = 18;
onGround = true;

controlSetup();

//State vars
state = STATE_FREE;
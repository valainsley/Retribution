

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
prevState = state;
subState = STATE_FREE;
atk_type = ATK_LP;

hbox_init();

maxHP = 5000;
hp = maxHP;
recoverDur = 20;
stunDur = 0;
knockBack = false;
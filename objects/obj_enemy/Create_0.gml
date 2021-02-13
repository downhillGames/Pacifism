//resizing
size = 3;
image_xscale = size*sign(image_xscale);
image_yscale = size;

//AI state machine
IDLE = 0;
RUNNING = 1;
SHOOTING = 2;
state = IDLE;

//fundamental logic
grounded = true;
xvel = 0;
yvel = 0;
chasing = false;

//control
xcont = 0;
jumping = false;
facing = sign(image_xscale);

//movement stats
grav = .5;
runSpeed = 4;
jumpVel = 14;

//patrolling AI
alarm[0] = random_range(room_speed,1.5*room_speed);

//player detection
sightRadius = 120; //detection radius if facing player
hearingRadius = 60; //detection radius if not facing player
escapeRadius = 240; //detection radius if chasing player
//randomization
randomize();

global.enemies_in_level +=1

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
acceleration = .3;
decceleration = .05;
jumpVel = 14;

//patrolling AI
alarm[0] = random_range(room_speed,1.5*room_speed); //the patrolling alarm, alternates between moving and stopping

//chasing AI
shootChance = .5;
aimingStance = false;
alarm[1] = 5; //the shooting alarm, every time it ticks down, the soldier has a random chance to shoot

//player detection
playx = obj_player.x;
playy = obj_player.y;
distanceToPlayer = point_distance(x,y,playx,playy);
lineOfSight = false;
trackx = x;
tracky = y;
sightRadius = 250; //detection radius if facing player
hearingRadius = 100; //detection radius if not facing player
escapeRadius = 500; //detection radius if chasing player
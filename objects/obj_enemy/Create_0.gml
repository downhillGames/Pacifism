//resizing
size = 2;
image_xscale = size;
image_yscale = size;

//status
grounded = true;
xvel = 0;
yvel = 0;

//control
xcont = 0;
jumping = false;

//movement stats
grav = 2;
runSpeed = 4;
jumpVel = 12;

//player detection
sightRadius = 120; //detection radius if facing player
hearingRadius = 60; //detection radius if not facing player
escapeRadius = 240; //detection radius if chasing player
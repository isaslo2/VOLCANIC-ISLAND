// thanks to Blobfish for some of the movement code
// TODO: add a way to switch between WASD and arrow keys

var _x_direction = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _jump = keyboard_check_pressed(ord("W"))
var _wall_collision = place_meeting(x, y + 1, oWall)

// movement
ySpeed += (grav / 100); // GRAVITY STRENGTH (change gravb variable in Create event)

// collision
if (_wall_collision)
{
	// if (xDirection != 0)
	// {
		// sprite_index = {moving sprite}
	// }
	// else
	// {
		// sprite_index = {idle sprite}
	// }
	
	// jump
	if (_jump)
	{
		ySpeed = -jumpHeight; // JUMP HEIGHT (change jumpHeight variable in Create event)
	};
};
// else
// {
	// sprite_index = {jumping sprite}
// }


// set direction of sprite
if (_x_direction != 0) 
{
	image_xscale = _x_direction;
};

if _x_direction != 0
{
	if lastPos != _x_direction
	{
		lastPos = _x_direction;
		accelFinal = 0;
	};
	
	if accelFinal <= accelMax
	{
		accelFinal += accel;
	};
}
else
{
	if accelFinal > 0
	{
		accelFinal -= accel;
	};
};

if accelFinal < accel
{
	accelFinal = 0;
	lastPos = 0;
};

xSpeed = (accelFinal * lastPos);

// update postion
x += xSpeed;
y += ySpeed;

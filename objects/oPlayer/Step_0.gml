// thanks to Blobfish for some of the movement code
// TODO: add a way to switch between WASD and arrow keys
var _x_direction = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _jump = keyboard_check(ord("W"))
var _ground_collision = place_meeting(x, y + 1, oWall)

// movement code
xSpeed = _x_direction * (spd * DELTA); // SPEED (change spd variable in Create event)
ySpeed += 1; // GRAVITY STRENGTH (change 1 to any whole number)

if (_jump)
{
	ySpeed = jumpHeight; // JUMP HEIGHT (change jumpHeight variable in Create event)
}

// set direction of sprite
if (_x_direction != 0) 
{
	image_xscale = _x_direction;
};


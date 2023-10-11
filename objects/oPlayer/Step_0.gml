// controls
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyRight = keyboard_check(ord("D"));
keyLeft = keyboard_check(ord("A"));

var _jump = keyUp

// calculate horizontal movement
var _h_move = keyRight - keyLeft;

// calculate acceleration
if _h_move != 0
{
	if lastPos != _h_move
	{
		lastPos = _h_move;
		accelFinal = 0;
	};
	
	if accelFinal <= accelMax
	{
		accelFinal += accel * delta;
	};
}
else
{
	if accelFinal > accel * delta
	{
		accelFinal -= accel * delta;
	};
};

if accelFinal < accel * delta
{
	accelFinal = 0;
	lastPos = 0;
};

hsp = (accelFinal * lastPos) * delta;

// correct sprite direction
if _h_move != 0
{
	image_xscale = _h_move;
};

// calculate gravity, collision & jump
var _coll = place_meeting(x, y + 1, oWall);

vsp += grv;

if (_coll)
{
	// if moving, use running sprite, else use idle sprite
	
	if (_jump)
	{
		vsp = -jmp;
	};
}; // if not on ground, use jumping sprite

if place_meeting(x + hsp, y, oWall)
{
	hsp = 0;
};

if place_meeting(x, y + (vsp * delta), oWall)
{
	vsp = 0;
};

x += hsp;
y += vsp * delta;
var _push = 1;

var _dir = point_direction(other.x, other.y, x, y);

var _hspd = lengthdir_x(_push, _dir);
var _vspd = lengthdir_y(_push, _dir);
		
if(!place_meeting(x + _hspd, y + _vspd, obj_collider)){
	x += _hspd;
	y += _vspd;
}
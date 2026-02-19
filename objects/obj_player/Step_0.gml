var _right = keyboard_check(ord("D")) || keyboard_check(vk_right);
var _left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var _up = keyboard_check(ord("W")) || keyboard_check(vk_up);
var _down = keyboard_check(ord("S")) || keyboard_check(vk_down);

hspd = (_right - _left)*spd;
vspd = (_down - _up)*spd;

move_and_collide(hspd, 0, obj_collider);
move_and_collide(0, vspd, obj_collider);

if((mouse_check_button(mb_left) && alarm[0] < 0) && global.ammo > 0){
	var _dirc_bullet = point_direction(x, y, mouse_x, mouse_y);
	var _bullet = instance_create_layer(x, y, layer, obj_bullet);
	_bullet.speed = 4;
	_bullet.direction = _dirc_bullet;
	alarm[0] = global.arm_del;
	global.ammo -= 1;
}

global.t_mil--;

if(global.t_mil = -1){
	global.t_sec--;
	global.t_mil = 59;
}

if(global.t_sec = -1){
	global.t_sec = 59;
	global.t_min--;
}
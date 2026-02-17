var _right = keyboard_check(ord("D")) || keyboard_check(vk_right);
var _left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var _up = keyboard_check(ord("W")) || keyboard_check(vk_up);
var _down = keyboard_check(ord("S")) || keyboard_check(vk_down);

hspd = (_right - _left)*spd;
vspd = (_down - _up)*spd;

move_and_collide(hspd, 0, all);
move_and_collide(0, vspd, all);

if(mouse_check_button_pressed(mb_left)){
	var _dirc_bullet = point_direction(x, y, mouse_x, mouse_y);
	var _bullet = instance_create_layer(x, y, layer, obj_bullet);
	_bullet.speed = 4;
	_bullet.direction = _dirc_bullet;
}

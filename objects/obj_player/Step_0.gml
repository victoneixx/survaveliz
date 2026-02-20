var _right = keyboard_check(ord("D")) || keyboard_check(vk_right);
var _left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var _up = keyboard_check(ord("W")) || keyboard_check(vk_up);
var _down = keyboard_check(ord("S")) || keyboard_check(vk_down);
var _move = (_right || _left || _up || _down);
global.life_pl = clamp(global.life_pl, 0, 100);

hspd = (_right - _left)*spd;
vspd = (_down - _up)*spd;

move_and_collide(hspd, 0, obj_collider);
move_and_collide(0, vspd, obj_collider);

if(_move){
	sprite_index = spr_player_step;
} else{
	sprite_index = spr_player_stop;
}

if((mouse_check_button(mb_left) && alarm[0] < 0) && global.ammo > 0){
	audio_play_sound(snd_shoot, 0, 0);
	var _dirc_bullet = point_direction(x, y, mouse_x, mouse_y);
	var _bullet = instance_create_layer(x, y, "player", obj_bullet);
	_bullet.speed = 4;
	_bullet.direction = _dirc_bullet;
	alarm[0] = global.arm_del;
	global.ammo -= 1;
}

if(alarm[1] < 0 && slap){
	slap = false;
	alarm[1] = 60;
}

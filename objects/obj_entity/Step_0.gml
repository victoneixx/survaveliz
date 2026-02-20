direction = point_direction(x, y, obj_player.x, obj_player.y);
spd = global.spd_enm;
speed = lerp(speed, spd, 0.1);
if(life <= 0){
	global.xp_cut += 2*global.xp_mul;
	global.amount_enm++;
	instance_destroy(self);
	global.score += 150;
	if(drop  < 0.84){
		instance_create_layer(x, y, "items", obj_ammo);
	} else{
		instance_create_layer(x, y, "items", obj_life);
	}
	show_debug_message("Morre!!!");
}

if(alarm[0] < 0 && slap){
	slap = false;
	alarm[0] = 60;
}
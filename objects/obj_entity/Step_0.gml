direction = point_direction(x, y, obj_player.x, obj_player.y);
spd = global.spd_enm;
speed = lerp(speed, spd, 0.1);
if(life <= 0){
	global.xp_cut += 2560;
	instance_destroy(self);
	global.score += 150;
	if(drop  <= 0.6){
		instance_create_layer(x, y, layer, obj_ammo);
	} else{
		instance_create_layer(x, y, layer, obj_life);
	}
	show_debug_message("Morre!!!");
}
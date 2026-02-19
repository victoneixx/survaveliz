if(global.level >= 10)global.xp_cut = 0;
//show_debug_message("XP: " + string(global.xp_cut));
if(global.level >= 10)exit;
if(global.xp_cut >= global.xp_max[global.level - 1]){
	global.level++;
	global.xp_mul += 0.5;
	global.xp_cut = 0;
	global.arm_dam += 1;
	global.arm_del -= 1;
	global.spd_enm += 0.1;
	global.delay_spn -= 54;
	global.dam_enm += 0.5;
}


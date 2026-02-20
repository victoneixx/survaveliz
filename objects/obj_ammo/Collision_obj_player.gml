if(global.ammo < 100){
	audio_play_sound(snd_iten, 6, 0);
	global.ammo += 15;
	global.ammo = clamp(global.ammo, 0, global.ammo_max);
	instance_destroy(self);
}
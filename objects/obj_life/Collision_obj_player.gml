if(global.life_pl < 100){
	audio_play_sound(snd_iten, 5, 0);
	global.life_pl += 5;
	global.life_pl = clamp(global.life_pl, 0, 100);
	instance_destroy(self);
}
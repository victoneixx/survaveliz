global.life_pl -= global.dam_enm;
audio_play_sound(snd_hit, 2, 0);
instance_destroy(self);
show_debug_message("Te pegui... Lá ele.");
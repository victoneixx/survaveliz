audio_play_sound(snd_ost3, 0, 1);
audio_stop_sound(snd_ost1);
cam_w = camera_get_view_width(view_camera[0]);
cam_h = camera_get_view_height(view_camera[0]);
display_set_gui_size(cam_w, cam_h);
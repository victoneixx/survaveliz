if(!instance_exists(target))exit;
x = lerp(x, target.x, 0.4);
y = lerp(y, target.y, 0.4);
camera_set_view_pos(view_camera[0], x-cam_h/2, y-cam_v/2);
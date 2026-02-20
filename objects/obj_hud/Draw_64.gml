draw_set_color(#AAFFAA);
draw_rectangle(0, 0, cam_w, 8, false);
draw_set_color(c_white);

var c_text = #005500;
//var c_shadow = #000000;

draw_set_font(fnt_guit_text);
draw_set_color(c_text);
draw_set_halign(0);
var _vida = round(global.life_pl);
draw_text_ext_transformed(0.6, 0, "life: "  + string(_vida), 0, 300, 0.26, 0.26, 0);
draw_text_ext_transformed(0.6, 4, "ammo: " + string(global.ammo), 0, 300, 0.26, 0.26, 0);
draw_set_halign(0);

draw_set_halign(2);
draw_text_ext_transformed(cam_w, 0, "level " + string(global.level), 0, 300, 0.26, 0.26, 0);
draw_text_ext_transformed(cam_w, 4, "score: " + string(global.score), 0, 300, 0.26, 0.26, 0);
draw_set_halign(0);

draw_set_halign(1);
draw_set_valign(1);

global.timer = "";
if(global.t_min > 9){global.timer += ""+string(global.t_min)}
if(global.t_min < 10){global.timer += "0"+string(global.t_min)}
global.timer += ":"
if(global.t_sec > 9){global.timer += ""+string(global.t_sec)}
if(global.t_sec < 10){global.timer += "0"+string(global.t_sec)}

draw_text_ext_transformed(cam_w/2, 1, string(global.timer), 0, 300, 0.38, 0.38, 0);
draw_set_valign(0);
draw_set_halign(0);
draw_set_color(c_white);
draw_set_font(0);
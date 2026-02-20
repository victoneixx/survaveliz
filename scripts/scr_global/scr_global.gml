global.life_pl = 0;
global.amount_enm = 0;
//global.gameover = false;

//Timer do jogo
global.t_min = 0;
global.t_sec = 0;
global.t_mil = 0;

//Xp e level do jogador
global.level = 1;
global.xp_mul = 0.5;
global.xp_cut = 0;
global.xp_max = [5, 10, 20, 40, 80, 160, 320, 640, 1280, 2560, 5120];

//Munição, dano e delay da arma
global.ammo_max = 100;				//Munição maxima
global.ammo = global.ammo_max;		//Munição atual
global.arm_del = 20;				//Delay dos tiros
global.arm_dam = 4;					//Dano dos tiros

//Habilidade e variaveis dos inimigos
global.spd_enm = 0.5;
global.delay_spn = 600;
global.dam_enm = 1;
global.score = 0;


/// @description Adds a shadow to text.
/// @function draw_text_shadow(x, y, string, font, shadow_size, shadow_colour, text_colour);
/// @param x
/// @param y
/// @param string
/// @param font
/// @param shadow_size
/// @param shadow_color
/// @param text_color
function draw_text_shadow(){
    var _x, _y, _string, _font, _shadow_size, _shadow_colour, _text_colour;
    _x = argument[0];
    _y = argument[1];
    _string = argument[2];
    _font = argument[3];
    _shadow_size = argument[4];
    _shadow_colour = argument[5];
    _text_colour = argument[6];
    draw_set_font(_font);
    draw_set_colour(_shadow_colour);
    draw_text((_x + _shadow_size), (_y + _shadow_size), string(_string));
    draw_set_colour(_text_colour);
    draw_text(_x, _y, string(_string));
}


/// @description Adds a shadow to text.
/// @function draw_text_shadow_ext_transformed(x, y, string, font, shadow_size, shadow_colour, text_colour, sep, w, xscale, yscale, angle);
/// @param x
/// @param y
/// @param string
/// @param font
/// @param shadow_size
/// @param shadow_color
/// @param text_color
/// @param _sep
/// @param _w
/// @param _xscale
/// @param _yscale
/// @param _angle
function draw_text_shadow_ext_transformed(){
    var _x, _y, _string, _font, _shadow_size, _shadow_colour, _text_colour, _sep, _w, _xscale, _yscale, _angle;
    _x = argument[0];
    _y = argument[1];
    _string = argument[2];
    _font = argument[3];
    _shadow_size = argument[4];
    _shadow_colour = argument[5];
    _text_colour = argument[6];
	_sep = argument[7];
	_w = argument[8];
	_xscale = argument[9];
	_yscale = argument[10];
	_angle = argument[11];
    draw_set_font(_font);
    draw_set_colour(_shadow_colour);
    draw_text_ext_transformed((_x + _shadow_size), (_y + _shadow_size), string(_string), (_sep + _shadow_size), (_w + _shadow_size), _xscale, _yscale, _angle);
    draw_set_colour(_text_colour);
    draw_text_ext_transformed(_x, _y, string(_string), _sep, _w, _xscale, _yscale, _angle);
}
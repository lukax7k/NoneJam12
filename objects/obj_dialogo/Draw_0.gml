draw_self();

if(!desenhar_texto) exit; 
/*

draw_set_font(fnt_dialogo);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
 * 
 * */

var _x = x - sprite_width/2
var _y = y - sprite_height/2
//draw_text_ext_transformed(_x + 4, _y + 2, texto, 60, sprite_width * 10 - 100, .1, .1, 0);
// draw_set_font(-1);



var _txt = scribble(texto).starting_format("fnt_menu", c_white);

_txt = _txt.scale(0.2);
_txt = _txt.wrap(sprite_width - 10);

_txt.draw(_x + 6, _y + 4, escrevente);
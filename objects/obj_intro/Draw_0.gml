
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_menu);

var _txt = scribble(text[idx]).starting_format("fnt_menu", c_white);

_txt = _txt.scale(0.2);
_txt = _txt.align(fa_center, fa_center)
_txt = _txt.wrap(400);

_txt.draw(280, 250, escrevente);

aparece_coisa()


draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);
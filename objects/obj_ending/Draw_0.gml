
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_menu);

var _txt = scribble(text).starting_format("fnt_menu", c_white);
var _txt_2 = scribble(text_2).starting_format("fnt_menu", c_white);

_txt = _txt.scale(0.3);
_txt = _txt.align(fa_center, fa_center)
_txt = _txt.wrap(400);

_txt_2 = _txt_2.scale(0.3);
_txt_2 = _txt_2.align(fa_center, fa_center)
_txt_2 = _txt_2.wrap(400);

_txt.draw(280, 30);
_txt_2.draw(280, 50);

if (tempo_loading <= 0)
{
    draw_text_transformed(480, 295, "Aperte [ E ] para voltar", .15, .15, 0);
}


draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);
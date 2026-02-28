draw_self()

var _text = "Novo jogo"

if (file_exists("saveteste" + string(save) + ".json"))
{
    _text = "Continuar"
}


if (global.ativo == save && selection)
{
    draw_set_halign(1)
    draw_set_valign(1)
    draw_set_font(fnt_inicio)
    draw_text_ext_transformed(x + 80, y, _text, -1, -1, .3, .3, 0)
    
    draw_set_halign(-1)
    draw_set_valign(-1)
    draw_set_font(-1)
}
if (global.on_delete && global.ativo == save)
{
    draw_sprite_ext(spr_deleta_save, 0, x + 32 * image_xscale + 32, y, 1.5, 1.5, 0, c_white, 1)
}
else 
{
	draw_sprite(spr_deleta_save, 0, x + 32 * image_xscale + 32, y)
}


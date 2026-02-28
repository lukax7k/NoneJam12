draw_self()

var _text = "Novo jogo"

if (file_exists("saveteste" + string(save) + ".json"))
{
    _text = "Continuar"
    
    var _num_estrelas = "x" + string(global.estrelinhas)
    var _num_concluidas = "x" + string(global.concluidas)
    
    
    if (global.ativo == save && selection)
    {
        draw_sprite(spr_estrela_artefato_supla, 0, x + 190, y )
        
        draw_set_halign(1)
        draw_set_valign(1)
        draw_set_font(fnt_inicio)
        draw_text_ext_transformed(x + 204, y + 6, _num_concluidas, -1, -1, .2, .2, 0)
        
        
        draw_sprite_ext(spr_estrelinha, 0, x + 260, y - 24, 1.5, 1.5, 0, c_white, 1 )
    
        draw_text_ext_transformed(x + 254, y + 6, _num_estrelas, -1, -1, .2, .2, 0)
        draw_set_halign(-1)
        draw_set_valign(-1)
        draw_set_font(-1)
    }
    
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

if (file_exists("saveteste" + string(save) + ".json"))
{
    if (global.ativo == save)
    {
        if (global.on_delete)
        {
            if (confirm)
            {
                draw_sprite_ext(spr_lixeira_deletando, timer_deleta, x + 32 * image_xscale + 64, y, 1.5, 1.5, 0, c_white, 1)
            }
            else 
            {
            	draw_sprite_ext(spr_deleta_save, 1, x + 32 * image_xscale + 64, y, 1.5, 1.5, 0, c_white, 1)
            }
            
        }
        else 
        {
        	draw_sprite_ext(spr_deleta_save, 0, x + 32 * image_xscale + 64, y, 1, 1, 0, c_white, 1)
        }
        
    }
    else 
    {
    	draw_sprite(spr_deleta_save, 0, x + 32 * image_xscale + 32, y)
    }
}




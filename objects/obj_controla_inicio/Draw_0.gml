if (!global.in_transition)
{
    draw_set_halign(1)
    draw_set_valign(1)
    draw_set_font(fnt_logo)
    draw_text_ext_transformed(350, 100, "Astromago", -1, -1, .25, .25, 0)
    draw_set_font(-1)
    
    draw_set_font(fnt_texto)
    draw_text_ext_transformed(430, 300, "Aperte [ E ] para continuar", -1, -1, .2, .2, 0)
    
    
    draw_set_halign(-1)
    draw_set_valign(-1)
    draw_set_font(-1)
}


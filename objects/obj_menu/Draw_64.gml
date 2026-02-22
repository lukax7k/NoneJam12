if (menu_ativo)
{
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    //draw_set_font(fnt_menu);
    
    if (option == 1)
    {
        draw_set_colour(c_aqua);
        draw_text(216, 218, "Continuar");
        draw_set_colour(-1);
    }
    else 
    {
    	draw_text(216, 218, "Continuar");
    }
    
    if (option == 2)
    {
        draw_set_colour(c_aqua);
        draw_text(216, 308, "Reiniciar");
        draw_set_colour(-1);
    }
    else 
    {
    	draw_text(216, 308, "Reiniciar");
    }
    
    if (option == 3)
    {
        draw_set_colour(c_aqua);
        draw_text(216, 398, "Sair");
        draw_set_colour(-1);
    }
    else 
    {
    	draw_text(216, 398, "Sair");
    }
    
    
    draw_set_font(-1);
    draw_set_halign(-1);
}

if (fim_de_jogo)
{
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    //draw_set_font(fnt_menu);
    
    
    draw_text(216, 188, "Boa Tentativa");
    draw_text(216, 235, "Voce fez:");
    draw_text(216, 278, string(global.pontos) + " Pontos!")
    
    
    if (option == 1)
    {
        draw_set_colour(c_aqua);
        draw_text(216, 358, "Reiniciar");
        draw_set_colour(-1);
    }
    else 
    {   
    	draw_text(216, 358, "Reiniciar");
    }
    
    if (option == 2)
    {
        draw_set_colour(c_aqua);
        draw_text(216, 408, "Sair");
        draw_set_colour(-1);
    }
    else 
    {
    	draw_text(216, 408, "Sair");
    }
    
    
    draw_set_font(-1);
    draw_set_halign(-1);
}
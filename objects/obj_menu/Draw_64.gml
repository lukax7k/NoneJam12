var _azul_base = make_colour_rgb(97, 119, 255)

if (menu_ativo)
{
    if (in_lobby)
    {
        draw_set_halign(fa_center);
        draw_set_valign(fa_center);
        draw_set_font(fnt_menu);
        
        if (option == 1)
        {
            draw_set_colour(_azul_base);
            draw_text(640, 220, "Continuar");
            draw_set_colour(-1);
        }
        else 
        {
        	draw_text(640, 220, "Continuar");
        }
        
        if (option == 2)
        {
            draw_set_colour(_azul_base);
            draw_text(640, 360, "Melhorias");
            draw_set_colour(-1);
        }
        else 
        {
        	draw_text(640, 360, "Melhorias");
        }
        
        if (option == 3)
        {
            draw_set_colour(_azul_base);
            draw_text(640, 500, "Sair");
            draw_set_colour(-1);
        }
        else 
        {
        	draw_text(640, 500, "Sair");
        }
        
        
        draw_set_font(-1);
        draw_set_halign(-1);
        draw_set_valign(-1);
        
    }
    else 
    {
    	draw_set_halign(fa_center);
        draw_set_valign(fa_center);
        draw_set_font(fnt_menu);
        
        if (option == 1)
        {
            draw_set_colour(_azul_base);
            draw_text(640, 174, "Continuar");
            draw_set_colour(-1);
        }
        else 
        {
        	draw_text(640, 174, "Continuar");
        }
        
        if (option == 2)
        {
            draw_set_colour(_azul_base);
            draw_text(640, 303, "Recomeçar");
            draw_set_colour(-1);
        }
        else 
        {
        	draw_text(640, 303, "Recomeçar");
        }
        
        if (option == 3)
        {
            draw_set_colour(_azul_base);
            draw_text(640, 417, "Sair da fase");
            draw_set_colour(-1);
        }
        else 
        {
        	draw_text(640, 417, "Sair da fase");
        }
        
        if (option == 4)
        {
            draw_set_colour(_azul_base);
            draw_text(640, 546, "Sair do jogo");
            draw_set_colour(-1);
        }
        else 
        {
        	draw_text(640, 546, "Sair do jogo");
        }
        
        
        draw_set_font(-1);
        draw_set_halign(-1);
        draw_set_valign(-1);
    }
    
}

if (fim_de_jogo)
{
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    draw_set_font(fnt_menu);
    
    
    draw_text(640, 188, "Você perdeu");
    
    
    
    if (option == 1)
        {
            draw_set_colour(_azul_base);
            draw_text(640, 343, "Recomeçar");
            draw_set_colour(-1);
        }
        else 
        {
        	draw_text(640, 343, "Recomeçar");
        }
        
        if (option == 2)
        {
            draw_set_colour(_azul_base);
            draw_text(640, 447, "Sair da fase");
            draw_set_colour(-1);
        }
        else 
        {
        	draw_text(640, 447, "Sair da fase");
        }
        
        if (option == 3)
        {
            draw_set_colour(_azul_base);
            draw_text(640, 546, "Sair do jogo");
            draw_set_colour(-1);
        }
        else 
        {
        	draw_text(640, 546, "Sair do jogo");
        }
    
    
    draw_set_font(-1);
    draw_set_halign(-1);
    draw_set_valign(-1);
}
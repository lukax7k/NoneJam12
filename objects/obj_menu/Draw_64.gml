var _azul_base = make_colour_rgb(97, 119, 255)
var _cinza_escuro = make_colour_rgb(89, 89, 89)

if (menu_ativo)
{
    if (in_lobby)
    {
        if (!global.loja)
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
            draw_set_font(fnt_loja);
            
            
            
            draw_sprite_ext(spr_cristal, 0, 516, 110, 3, 3, 0, c_white, 1)
            draw_text(640, 160, "Loja de cristais")
            draw_sprite_ext(spr_cristal, 0, 860, 110, 3, 3, 0, c_white, 1)
            
            if (!global.vida_esgotada)
            {
                if (option == 1)
                {
                    draw_set_colour(_azul_base);
                    draw_text(640, 270, "Vida extra                       " + string(valor_vida));
                    draw_set_colour(-1);
                }
                else 
                {
                	draw_text(640, 270, "Vida extra                       "+ string(valor_vida));
                }
            }
            else 
            {
                if (option == 1)
                {
                    draw_set_colour(c_gray);
                    draw_text(640, 270, "Vida extra                       --");
                    draw_set_colour(-1);
                }
                else 
                {
                	draw_set_colour(_cinza_escuro);
                    draw_text(640, 270, "Vida extra                       --");
                    draw_set_colour(-1);
                }
            	
            }
            
            if (!global.grav_esgotada)
            {
                if (option == 2)
                {
                    draw_set_colour(_azul_base);
                    draw_text(640, 350, "Feitiço de gravidade       100");
                    draw_set_colour(-1);
                }
                else 
                {
                	draw_text(640, 350, "Feitiço de gravidade       100");
                }
            }
            else 
            {
                if (option == 2)
                {
                    draw_set_colour(c_gray);
                    draw_text(640, 350, "Feitiço de gravidade       --");
                    draw_set_colour(-1);
                }
                else 
                {
                    draw_set_colour(_cinza_escuro);
                    draw_text(640, 350, "Feitiço de gravidade       --");
                    draw_set_colour(-1);
                }
            	
            }
            
            if (!global.impulso_esgotada)
            {
                if (option == 3)
                {
                    draw_set_colour(_azul_base);
                    draw_text(640, 430, "Feitiço de avanço            100");
                    draw_set_colour(-1);
                }
                else 
                {
                	draw_text(640, 430, "Feitiço de avanço            100");
                }
            }
            else 
            {
                if (option == 3)
                {
                    draw_set_colour(c_gray);
                    draw_text(640, 430, "Feitiço de avanço            --");
                    draw_set_colour(-1);
                }
                else 
                {
                	draw_set_colour(_cinza_escuro);
                    draw_text(640, 430, "Feitiço de avanço            --");
                    draw_set_colour(-1);
                }
            	
            }
            
            
            if (option == 4)
            {
                draw_set_colour(_azul_base);
                draw_text(640, 570, "Sair");
                draw_set_colour(-1);
            }
            else 
            {
            	draw_text(640, 570, "Sair");
            }
            
            
            draw_set_font(-1);
            draw_set_halign(-1);
            draw_set_valign(-1);
        }
        
    }
    else 
    {
        if (global.pause)
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
        else if (global.ganhou)
        {
        	draw_set_halign(fa_center);
            draw_set_valign(fa_center);
            draw_set_font(fnt_menu);
            
            
            draw_text(640, 188, "Fase concluída!");
            
            
            if (room != rm_level_3)
            {
                if (option == 1)
                {
                    draw_set_colour(_azul_base);
                    draw_text(640, 313, "Próxima fase");
                    draw_set_colour(-1);
                }
                else 
                {
                	draw_text(640, 313, "Próxima fase");
                }
                
                if (option == 2)
                {
                    draw_set_colour(_azul_base);
                    draw_text(640, 397, "Voltar para base");
                    draw_set_colour(-1);
                }
                else 
                {
                	draw_text(640, 397, "Voltar para base");
                }
                
                if (option == 3)
                {
                    draw_set_colour(_azul_base);
                    draw_text(640, 481, "Jogar novamente");
                    draw_set_colour(-1);
                }
                else 
                {
                	draw_text(640, 481, "Jogar novamente");
                }
                if (option == 4)
                {
                    draw_set_colour(_azul_base);
                    draw_text(640, 565, "Sair do jogo");
                    draw_set_colour(-1);
                }
                else 
                {
                	draw_text(640, 565, "Sair do jogo");
                }
            }
            else 
            {
                
                if (option == 1)
                {
                    draw_set_colour(_azul_base);
                    draw_text(640, 397, "Voltar para base");
                    draw_set_colour(-1);
                }
                else 
                {
                	draw_text(640, 397, "Voltar para base");
                }
                
                if (option == 2)
                {
                    draw_set_colour(_azul_base);
                    draw_text(640, 481, "Jogar novamente");
                    draw_set_colour(-1);
                }
                else 
                {
                	draw_text(640, 481, "Jogar novamente");
                }
                if (option == 3)
                {
                    draw_set_colour(_azul_base);
                    draw_text(640, 565, "Sair do jogo");
                    draw_set_colour(-1);
                }
                else 
                {
                	draw_text(640, 565, "Sair do jogo");
                }
            }
                
            
            
            draw_set_font(-1);
            draw_set_halign(-1);
            draw_set_valign(-1);
        }
    	
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
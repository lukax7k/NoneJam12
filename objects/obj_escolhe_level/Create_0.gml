image_speed = 0;

entra_level = function()
{
    if (estou_disponivel)
    {
        global.destino = level
        instance_create_layer(0, 0, "Transition", obj_transition_lobby)
    }
    
    
}

estou_disponivel = false

checa_tranca = function()
{
    if (global.levels_liberados[estrelas].liberado == true)
    {
        estou_disponivel = true
    }
    else 
    {
        estou_disponivel = false	
    }
}

abre_porta = function()
{
    var _player = place_meeting(x, y, obj_player)
    
    if(_player)
    {
        if (image_index < image_number - 1)
        {
            image_speed = 1;
            toca_som(snd_porta_abrindo)
        }
        else 
        {
            image_speed = 0;
        }
    }
    else 
    {
        if (image_index > 0)
        {
            image_speed = -1;
             toca_som(snd_porta_fechando)
        }
        else 
        {
            image_speed = 0;
        }
    }
}

desenha_estrelas = function()
{
    if (estrelas == 0)
    {
        if (global.levels_liberados[0].concluido)
        {
            draw_sprite_ext(spr_estrela_artefato_supla, 0, x, y - 140, 1, 1, 0, c_white, 1)
        }
        else 
        {
        	draw_sprite_ext(spr_estrela_artefato_supla, 0, x, y - 140, 1, 1, 0, c_black, 1)
        }
        
        if (global.estrelinhas_col[0].pega == true)
        {
            draw_sprite_ext(spr_estrelinha, 0, x - 15, y - 120, 1, 1, 0, c_white, 1)
        }
        else 
        {
        	draw_sprite_ext(spr_estrelinha, 0, x - 15, y - 120, 1, 1, 0, c_black, 1)
        }
        
        if (global.estrelinhas_col[1].pega == true)
        {
            draw_sprite_ext(spr_estrelinha, 0, x + 15, y - 130, 1, 1, 0, c_white, 1)
        }
        else 
        {
        	draw_sprite_ext(spr_estrelinha, 0, x + 15, y - 130, 1, 1, 0, c_black, 1)
        }
        
        if (global.estrelinhas_col[2].pega == true)
        {
            draw_sprite_ext(spr_estrelinha, 0, x + 45, y - 120, 1, 1, 0, c_white, 1)
        }
        else 
        {
        	draw_sprite_ext(spr_estrelinha, 0, x + 45, y - 120, 1, 1, 0, c_black, 1)
        }
        
    }
    else if (estrelas == 1)
    {
        if (global.levels_liberados[1].concluido)
        {
            draw_sprite_ext(spr_estrela_artefato_supla, 0, x, y - 140, 1, 1, 0, c_white, 1)
        }
        else 
        {
        	draw_sprite_ext(spr_estrela_artefato_supla, 0, x, y - 140, 1, 1, 0, c_black, 1)
        }
        
        
        if (global.estrelinhas_col[3].pega == true)
        {
            draw_sprite_ext(spr_estrelinha, 0, x - 15, y - 120, 1, 1, 0, c_white, 1)
        }
        else 
        {
        	draw_sprite_ext(spr_estrelinha, 0, x - 15, y - 120, 1, 1, 0, c_black, 1)
        }
        
        if (global.estrelinhas_col[4].pega == true)
        {
            draw_sprite_ext(spr_estrelinha, 0, x + 15, y - 130, 1, 1, 0, c_white, 1)
        }
        else 
        {
        	draw_sprite_ext(spr_estrelinha, 0, x + 15, y - 130, 1, 1, 0, c_black, 1)
        }
        
        if (global.estrelinhas_col[5].pega == true)
        {
            draw_sprite_ext(spr_estrelinha, 0, x + 45, y - 120, 1, 1, 0, c_white, 1)
        }
        else 
        {
        	draw_sprite_ext(spr_estrelinha, 0, x + 45, y - 120, 1, 1, 0, c_black, 1)
        }
        
    }
    else if (estrelas == 2)
    {
        if (global.levels_liberados[2].concluido)
        {
            draw_sprite_ext(spr_estrela_artefato_supla, 0, x, y - 140, 1, 1, 0, c_white, 1)
        }
        else 
        {
        	draw_sprite_ext(spr_estrela_artefato_supla, 0, x, y - 140, 1, 1, 0, c_black, 1)
        }
        
        if (global.estrelinhas_col[6].pega == true)
        {
            draw_sprite_ext(spr_estrelinha, 0, x - 15, y - 120, 1, 1, 0, c_white, 1)
        }
        else 
        {
        	draw_sprite_ext(spr_estrelinha, 0, x - 15, y - 120, 1, 1, 0, c_black, 1)
        }
        
        if (global.estrelinhas_col[7].pega == true)
        {
            draw_sprite_ext(spr_estrelinha, 0, x + 15, y - 130, 1, 1, 0, c_white, 1)
        }
        else 
        {
        	draw_sprite_ext(spr_estrelinha, 0, x + 15, y - 130, 1, 1, 0, c_black, 1)
        }
        
        if (global.estrelinhas_col[8].pega == true)
        {
            draw_sprite_ext(spr_estrelinha, 0, x + 45, y - 120, 1, 1, 0, c_white, 1)
        }
        else 
        {
        	draw_sprite_ext(spr_estrelinha, 0, x + 45, y - 120, 1, 1, 0, c_black, 1)
        }
        
    }
    else if (estrelas == 3)
    {
        if (global.levels_liberados[3].concluido)
        {
            draw_sprite_ext(spr_estrela_artefato_supla, 0, x, y - 140, 1, 1, 0, c_white, 1)
        }
        else 
        {
        	draw_sprite_ext(spr_estrela_artefato_supla, 0, x, y - 140, 1, 1, 0, c_black, 1)
        }
        
        
        if (global.estrelinhas_col[9].pega == true)
        {
            draw_sprite_ext(spr_estrelinha, 0, x - 15, y - 120, 1, 1, 0, c_white, 1)
        }
        else 
        {
        	draw_sprite_ext(spr_estrelinha, 0, x - 15, y - 120, 1, 1, 0, c_black, 1)
        }
        
        if (global.estrelinhas_col[10].pega == true)
        {
            draw_sprite_ext(spr_estrelinha, 0, x + 15, y - 130, 1, 1, 0, c_white, 1)
        }
        else 
        {
        	draw_sprite_ext(spr_estrelinha, 0, x + 15, y - 130, 1, 1, 0, c_black, 1)
        }
        
        if (global.estrelinhas_col[11].pega == true)
        {
            draw_sprite_ext(spr_estrelinha, 0, x + 45, y - 120, 1, 1, 0, c_white, 1)
        }
        else 
        {
        	draw_sprite_ext(spr_estrelinha, 0, x + 45, y - 120, 1, 1, 0, c_black, 1)
        }
        
    }
}
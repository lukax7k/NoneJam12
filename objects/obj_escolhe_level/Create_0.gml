image_speed = 0;

entra_level = function()
{
    global.destino = level
    instance_create_layer(0, 0, "Transition", obj_transition_lobby)
    
}

abre_porta = function()
{
    var _player = place_meeting(x, y, obj_player)
    
    if(_player)
    {
        if (image_index < image_number - 1)
        {
            image_speed = 1;
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
}
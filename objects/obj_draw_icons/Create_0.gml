draw_icons = function()
{
    if (instance_exists(obj_player))
    {
        for (var i = 0; i < array_length(obj_player.magias_player); i++) 
        {
        	var _spc = 76
            
            if (obj_player.magia_atual == i)
            {
                draw_sprite_ext(obj_player.magias_player[i].icon_a, 0, 30 + _spc * i, 100, 2, 2, 0, c_white, 1)
            }
            else 
            {
            	draw_sprite_ext(obj_player.magias_player[i].icon_g, 0, 30 + _spc * i, 100, 2, 2, 0, c_white, 1)
            }
        }
        
    }
}

draw_points = function()
{
    draw_sprite_ext(spr_estrelinha, 0, 1280 - 110, 0, 3, 3, 0, c_white, 1)
    draw_sprite_ext(spr_cristal, 0, 1280 - 110, 64, 3, 3, 0, c_white, 1)
    
    draw_set_font(fnt_num)
    draw_set_halign(fa_bottom)
    draw_text(1280 - 22, 23, "x " + string(global.estrelinhas + global.estrelinhas_temp))
    draw_text(1280 - 22, 87, "x " + string(global.cristais + global.cristais_temp))
    draw_set_halign(-1)
    draw_set_font(-1)
}
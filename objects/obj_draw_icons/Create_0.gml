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
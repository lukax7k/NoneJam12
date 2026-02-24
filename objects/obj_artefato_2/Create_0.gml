meu_totem = obj_totem_2

segue_player = function()
{
    if (global.artefato_2)
    {
        
        if (!instance_exists(obj_player)) return;
        
        x = lerp(x, obj_player.x + 38 * -obj_player.x_scale, .3)
        y = lerp(y, obj_player.y - 16, .3)
    }
    else 
    {
        x = lerp(x, meu_totem.x, .3)
        y = lerp(y, meu_totem.y - 46, .3)
    }
    
}



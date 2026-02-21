meu_totem = obj_totem_1

segue_player = function()
{
    if (global.artefato_1)
    {
        
        x = lerp(x, obj_player.x + 38 * -obj_player.image_xscale, .3)
        y = lerp(y, obj_player.y - 16, .3)
    }
    else 
    {
        x = lerp(x, meu_totem.x, .3)
        y = lerp(y, meu_totem.y - 46, .3)
    }
    
}



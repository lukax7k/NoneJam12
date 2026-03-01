cair = false

colisoes = [obj_chao, obj_player]

minha_aranha = noone

image_angle = random_range(0, 259)

caindo = function()
{
    if (cair)
    {
        vspeed = 4
        
        if (place_meeting(x, y, colisoes))
        {
            if (place_meeting(x, y, obj_player))
            {
                obj_player.dano_de_cima = true
                obj_player.toma_dano()
                instance_destroy()
            }
            else 
            {
                instance_destroy()	
            }
        }
    }
    else 
    {
        if (instance_exists(minha_aranha))
        {
            x = minha_aranha.x
            y = minha_aranha.y + 30
        }
        else 
        {
            instance_destroy()	
        }
        
    }
}
direction = dir

if (place_meeting(x, y, colisoes))
{
    if (instance_exists(obj_player))
    {
        if (place_meeting(x, y, obj_player))
        {
            obj_player.toma_dano()
        }
    }
    
    
    
    instance_destroy()
}

if (global.mundo_invertido)
{
    instance_destroy()
}




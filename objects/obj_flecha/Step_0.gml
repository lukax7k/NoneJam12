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

var _esfera = instance_place(x, y, obj_esfera_magica)
if (_esfera != noone)
{
    _esfera.insta_destroi()
    instance_destroy()
}

if (!global.mundo_invertido)
{
    instance_destroy()
}



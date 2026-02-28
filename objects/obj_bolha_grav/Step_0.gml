if (!global.mundo_invertido)
{
    image_xscale = 1
    image_yscale = image_xscale
    x = mouse_x 
    y = mouse_y 
}
else 
{
    if (instance_exists(obj_player))
    {
        if (obj_player.estado != "escalando")
        {
            image_xscale = 2
            image_yscale = image_xscale
            x = obj_player.x - 2 * obj_player.x_scale
            y = obj_player.y - 12 
        }
        else 
        {
        	image_xscale = 2
            image_yscale = image_xscale
            x = obj_player.x
            y = obj_player.y - 12 
        }
        
    }
    else 
    {
        instance_destroy()	
    }
	
}

if (mouse_check_button(mb_left))
{
    depth = 198
}
else 
{
	depth = 201
}

if (global.mundo_invertido)
{
    if (mouse_check_button(mb_left))
    {
        if (!global.grav_bolha)
        {
           toca_som(snd_bolha) 
        }
        
        global.grav_bolha = true
    }
    else 
    {
    	global.grav_bolha = false
    }
}


if (instance_exists(obj_player))
{
    if (obj_player.magias_player[obj_player.magia_atual].nome != "Bolha Gravitacional")
    {
        global.grav_bolha = false
        instance_destroy()
    }
}
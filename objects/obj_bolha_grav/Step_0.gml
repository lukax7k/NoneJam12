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
        image_xscale = 2
        image_yscale = image_xscale
        x = obj_player.x - 4 * obj_player.image_xscale
        y = obj_player.y - 12
    }
    else 
    {
        instance_destroy()	
    }
	
}

if (mouse_check_button(mb_left))
{
    depth = 199
}
else 
{
	depth = 201
}

if (global.mundo_invertido)
{
    if (mouse_check_button(mb_left))
    {
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
        instance_destroy()
    }
}
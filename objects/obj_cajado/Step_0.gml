if (instance_exists(obj_player))
{
    if (obj_player.estado == "escalando")
    {
        x = obj_player.x - 3 
        y = obj_player.y - 4 
    }
    else 
    {
    	x = obj_player.x - 5 * obj_player.x_scale 
        y = obj_player.y - 8
    }
    
    
    
}

if (global.morreu)
{
    ativo = false
}

if (global.in_transition)
{
    image_alpha = 0
}
else 
{
    image_alpha = 1	
}

if (ativo) 
{
    var _dir = point_direction(x, y, mouse_x, mouse_y)
    
    
    if (obj_player.estado != "escalando")
    {
       if (mouse_check_button(mb_right))
        {
            girando = true
            toca_som(snd_giro_cajado)
        }
        
        if (girando)
        {
            giro_foda()
        }
        else 
        {
            global.giro_foda = false
        	image_angle = _dir
        } 
    }
    else 
    {
        global.giro_foda = false
    	image_angle = 45
    }
    
    
}
else 
{
    if (image_angle >= 0 && image_angle < 90)
    {
        image_angle = lerp(image_angle, 0, .3)	
    }
    
    else if (image_angle >= 90 && image_angle < 180)
    {
        image_angle = lerp(image_angle, 180, .3)	
    }
    
    else if (image_angle >= 180 && image_angle < 270) 
    {
    	image_angle = lerp(image_angle, 180, .3)	
    }
    
    else if (image_angle >= 270 && image_angle < 359) 
    {
    	image_angle = lerp(image_angle, 0, .3)	
    }
    
    
    
    
    move_and_collide(0, 4, obj_chao, 12)
}
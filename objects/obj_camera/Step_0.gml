if (instance_exists(obj_player))
{
    alvo = obj_player
    
    if (alvo.estado != "escalando")
    {
        up = keyboard_check(ord("W"))
        down = keyboard_check(ord("S"))
    }
    else 
    {
    	up = 0
        down = 0
    }
    
    var _var_cam = 0
    
    if (up xor down)
    {
        if (up)
        {
            if (timer_up > 0)
            {
                timer_up --
            }
            else    
            {
            	_var_cam = -128
            }
        }
        else 
        {
        	timer_up = tempo_up
        }
        if (down)
        {
            if (timer_down > 0)
            {
                timer_down --
            }
            else    
            {
            	_var_cam = 128
            }
        }
        else 
        {
        	timer_down = tempo_down
        }
        
    }
    else 
    {
    	timer_up = tempo_up
        timer_down = tempo_down
    }
    


    x = lerp(x, alvo.x, 0.1)
    y = lerp(y, alvo.y + _var_cam, 0.1)
    
    var _larg_camera = camera_get_view_width(view_camera[0])
    var _alt_camera = camera_get_view_height(view_camera[0])
    
    var _cam_x = x - _larg_camera /2
    var _cam_y = y - _alt_camera /2
    
    _cam_x = clamp(_cam_x, 0, room_width - _larg_camera)
    _cam_y = clamp(_cam_y, 0, room_height - _alt_camera)
    
    camera_set_view_pos(view_camera[0], _cam_x, _cam_y)
    
}
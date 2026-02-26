timer_flecha = irandom_range(120, 150)

atira_flecha = function()
{
    if (timer_flecha > 0)
    {
        timer_flecha --
    }
    else 
    {
    	var _flecha = instance_create_layer(x, y - 10, layer, obj_flecha)
        if (image_xscale == -1)
        {
            _flecha.dir = 180
            _flecha.image_xscale = -1
        }
        
        timer_flecha = irandom_range(120, 150)
    }
}
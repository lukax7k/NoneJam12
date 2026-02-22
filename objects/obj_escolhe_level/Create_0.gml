image_speed = 0;

entra_level = function()
{
    global.destino = level
    instance_create_layer(0, 0, "Transition", obj_transition_lobby)
    
}

abre_porta = function()
{
    var _player = place_meeting(x, y, obj_player)
    
    if(_player)
    {
        if (image_index < image_number - 1)
        {
            image_speed = 1;
        }
        else 
        {
            image_speed = 0;
        }
    }
    else 
    {
        if (image_index > 0)
        {
            image_speed = -1;
        }
        else 
        {
            image_speed = 0;
        }
    }
    
}
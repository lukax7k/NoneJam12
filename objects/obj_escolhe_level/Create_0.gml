image_speed = 0;

entra_level = function()
{
    room_goto(level)
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
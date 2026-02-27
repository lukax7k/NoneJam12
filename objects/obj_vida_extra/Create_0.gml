dei_vida = false

troca_sprite = function(_sprite)
{
    if (sprite_index != _sprite)
    {
        sprite_index = _sprite; 
        
        image_index = 0;
    }
}

acabou_animacao = function()
{
    var _spd = sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps);
    if (image_index + _spd >= image_number)
    {
       return true;
    }
}
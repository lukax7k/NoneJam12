acabou_animacao = function()
{
    var _spd = sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps);
    if (image_index + _spd >= image_number)
    {
       return true;
    }
}
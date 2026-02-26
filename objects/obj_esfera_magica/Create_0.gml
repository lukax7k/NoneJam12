dir = 0

colisoes = [obj_chao, obj_totem]

range = 3
tempo_destruir = range * game_get_speed(gamespeed_fps)

destruir = false

image_xscale = 1.2
image_yscale = image_xscale

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

avancando = function()
{
    direction = dir
    image_angle = dir
    if (destruir)
    {
        speed = 1
    }
    else 
    {
    	speed = 7
    }
    
}

destruindo = function()
{
    if (place_meeting(x, y, colisoes))
    {
        
        destruir = true
    }
    else 
    {
    	if (tempo_destruir > 0)
        {
            tempo_destruir --
        }
        else 
        {
            
            destruir = true
        }
    }
}

insta_destroi = function()
{
    destruir = true
    me_destruindo()
}

me_destruindo = function()
{
    troca_sprite(spr_esfera_magica_explode)
    mask_index = spr_colisao_vazia
    
    
    if (acabou_animacao())
    {
        instance_destroy()
    }
}
if (instance_exists(obj_player))
{
    var _player = instance_place(x, y, obj_player)
    if (_player != noone)
    {
        if (_player.vida < global.vida_max && !dei_vida)
        {
            toca_som(snd_cura)
            _player.vida ++
            dei_vida = true
        }
    }
    
}

if (dei_vida)
{
    troca_sprite(spr_vida_extra_destroi)
    
    if (acabou_animacao())
    {
        instance_destroy()
    }
}
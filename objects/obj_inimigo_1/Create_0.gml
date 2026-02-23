troca_lado = range * 60

dano = 1

speed = 2

tempo_trocar = troca_lado

troca_lado_timer = tempo_trocar

spd_salva = 2

paralizado = false

cooldown_paralizado = 180
timer_paralizado = 0

trocando_lado = function()
{
    if (troca_lado_timer > 0)
    {
        troca_lado_timer --
    }
    else 
    {
    	speed = -speed
        troca_lado_timer = tempo_trocar
        salva_speed()
    }
}

salva_speed = function()
{
    spd_salva = speed
}

ficar_paralizado = function()
{
    if(place_meeting(x, y, obj_esfera_magica))
    {
        var _esfera = instance_place(x, y, obj_esfera_magica)
        if (_esfera == noone) return;
        
        timer_paralizado = cooldown_paralizado
        paralizado = true
        
        _esfera.insta_destroi()
    }
}

remove_paralizia = function()
{
    if (paralizado)
    {
        if(timer_paralizado > 0)
        {
            timer_paralizado --
        }
        else 
        {
        	paralizado = false
        }
    }
}
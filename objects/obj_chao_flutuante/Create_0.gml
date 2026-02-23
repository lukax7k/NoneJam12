grav = .2

velv = 0
max_velv = 4

anti_grav = true
retorno = false

colisoes = [obj_chao]

tempo_antigrav = 120
timer = tempo_antigrav


aplica_grav = function()
{
    move_and_collide(0, velv, colisoes, 12)
    
    if (anti_grav)
    {
        velv += grav
        velv = clamp(velv, -max_velv, max_velv)
    }
    
}

timer_grav = function()
{
    if (anti_grav)
    {
        if(timer > 0)
        {
            timer --
        }
        else 
        {
        	anti_grav = false
            retorno = true
        }
    }
}

voltando = function()
{
    if (retorno)
    {
        velv = -2
    }
}
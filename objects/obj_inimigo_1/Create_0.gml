troca_lado = range * 60

dano = 1

speed = 2

tempo_trocar = troca_lado

troca_lado_timer = tempo_trocar

spd_salva = 2

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
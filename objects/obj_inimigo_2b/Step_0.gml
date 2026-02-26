mundo_origem = global.mundo_invertido


if (!mundo_origem)
{
    image_alpha = 0
    minha_pedra = noone
}
else 
{
    image_alpha = 1	
    aplica_grav_inversa()
    olha_player()
    
    if (!global.pause && !paralizado)
    {
        voltando_top()
    }
    
}




if (global.pause || paralizado)
{
    image_speed = 0
    velh = 0
    velv = 0
    
}
else 
{
    image_speed = 1
    if (mundo_origem)
    {
        solta_pedra()
    }
    
    
}



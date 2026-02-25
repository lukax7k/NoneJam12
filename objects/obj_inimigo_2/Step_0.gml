mundo_origem = !global.mundo_invertido


if (!mundo_origem)
{
    image_alpha = 0
}
else 
{
    image_alpha = 1	
    aplica_grav_inversa()
    olha_player()
    ficar_paralizado()
    if (!global.pause && !paralizado)
    {
        inverte_grav()
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
    solta_pedra()
    
}

if (!global.pause)
{
    remove_paralizia()
}

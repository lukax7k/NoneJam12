mundo_origem = !global.mundo_invertido

if (!mundo_origem)
{
    image_alpha = 0
}
else 
{
    image_alpha = 1	
}

if (speed < 0)
{
    image_xscale = 1
}
else if (speed > 0)
{
    image_xscale = -1
}



if (global.pause)
{
    image_speed = 0
    speed = 0
}
else 
{
    image_speed = 1
    speed = spd_salva
    trocando_lado()
}

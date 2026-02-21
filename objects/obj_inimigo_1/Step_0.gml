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
else 
{
    image_xscale = -1
}
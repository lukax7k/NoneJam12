dano = 1

mundo_origem = false

origem_y = y
alvo_y = y - 10

largura = 1

timer_desaparece = 90



subindo = function()
{
    image_xscale = largura
    y = lerp(y, alvo_y, .4)
}

descendo = function()
{
    if (timer_desaparece > 0)
    {
        timer_desaparece --
    }
    else 
    {
    	y = lerp(y, origem_y + 10, .3)
        
    }
}
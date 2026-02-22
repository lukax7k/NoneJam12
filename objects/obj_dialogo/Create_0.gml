texto = "Meu primeiro texto"

scribble_anim_wave(.5, .1, .1);

escrevente = scribble_typist();

escrevente.in(0.8, 5);

desenhar_texto = false;

me_destruir = false;

iniciando = function()
{
    image_xscale = lerp(image_xscale, 4.5, .1)
    image_yscale = 2.5

    y = lerp(y, ystart - 15, .1)
    
    if (image_xscale >= 4.2)
    {
        desenhar_texto = true;
    }
}

finalizando = function()
{
    image_xscale = lerp(image_xscale, 0, .2)
    
    image_alpha = lerp(image_alpha, 0, .1)
    
    desenhar_texto = false;
    
    if (image_alpha <= 0.1)
    {
        instance_destroy();
    }
}
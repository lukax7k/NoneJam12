image_alpha = 1
image_xscale = 20
image_yscale = 5

sumindo = function()
{
    if (image_alpha > 0)
    {
        image_alpha -= .012
    }
    else 
    {
        global.trava_inicio = false
        instance_destroy()	
    }
}
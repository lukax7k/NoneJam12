if (global.mundo_invertido)
{
    image_alpha = 1
    if (ativa_queda)
    {
        move_and_collide(0, 8, obj_chao, 12)
        
        if (place_meeting(x, y , obj_espinho))
        {
            instance_destroy()
        }
    }
}
else 
{
    image_alpha = 0	
}
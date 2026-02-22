if (entrando)
{
    img += img_vel

    if (img - img_num > cols + 1)
    {
        if (room_exists(global.destino))
        {
           room_goto(global.destino)
            
            entrando = false
        }
    }
}
else 
{
    img -= img_vel
    
    if (img < -5) 
    {
        instance_destroy()
    }
}




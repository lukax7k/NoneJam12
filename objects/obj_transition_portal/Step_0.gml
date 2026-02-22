if (entrando)
{
    global.in_transition = true
    img += img_vel

    if (img - img_num > cols + 1)
    {
        if (room_exists(global.destino))
        {
           global.mundo_invertido = !global.mundo_invertido
            
            entrando = false
        }
    }
}
else 
{
    img -= img_vel
    
    if (img < -5) 
    {
        global.in_transition = false
        instance_destroy()
    }
}




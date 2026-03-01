if (entrando)
{
    img += img_vel
    global.in_transition = true
    toca_som(snd_confirm_save)

    if (img - img_num > cols + 1)
    {
        if (room_exists(global.destino))
        {
           room_goto(rm_loading)
            
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




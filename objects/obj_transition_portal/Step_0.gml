if (entrando)
{
    global.in_transition = true
    img += img_vel
    toca_som(snd_portal_in)

    if (img - img_num > cols + 1)
    {
        
           global.mundo_invertido = !global.mundo_invertido
        
            if (instance_exists(obj_part_level))
            {
                obj_part_level.troca_particula()
            }
            
            
            
            entrando = false
        
    }
}
else 
{
    img -= img_vel
    
   
    
    if (img < -5) 
    {
        global.in_transition = false
        toca_som(snd_portal_out)
        instance_destroy()
    }
}




switch (action) 
{
    case "reset":
    {
        if (entrando)
        {
            global.in_transition = true
            img += img_vel
            toca_som(snd_confirm_save)
        
            if (img - img_num > cols + 1)
            {
                room_restart()    
                global.estrelinhas_temp = 0
                global.cristais_temp = 0
                for (var i = 0; i < array_length(global.estrelinhas_col_temp); i++) 
                {
                    global.estrelinhas_col_temp[i].pega = false
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
                instance_destroy()
            }
        }
    }
    break;

    case "lobby":
    {
        if (entrando)
    {
        img += img_vel
        global.in_transition = true
        toca_som(snd_exit_save)
        
    
        if (img - img_num > cols + 1)
        {
            
            
            room_goto(rm_lobby)
            global.estrelinhas_temp = 0
            global.cristais_temp = 0
            for (var i = 0; i < array_length(global.estrelinhas_col_temp); i++) 
            {
            	
                    global.estrelinhas_col_temp[i].pega = false
                
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
            instance_destroy()
        }
    }
    }
}






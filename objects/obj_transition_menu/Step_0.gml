switch (action) 
{
    case "reset":
    {
        if (entrando)
        {
            img += img_vel
        
            if (img - img_num > cols + 1)
            {
                room_restart()    
                entrando = false
                
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
    }
    break;

    case "lobby":
    {
        if (entrando)
    {
        img += img_vel
    
        if (img - img_num > cols + 1)
        {
            
            room_goto(rm_lobby)
            entrando = false
            
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
    }
}






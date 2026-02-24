switch (action) 
{
    

    case "lobby":
    {
        if (entrando)
    {
        img += img_vel
        global.in_transition = true
    
        if (img - img_num > cols + 1)
        {
            if (global.estrelinhas_temp != 0)
            {
                global.estrelinhas += global.estrelinhas_temp
            }
            global.estrelinhas_temp = 0
            
            for (var i = 0; i < array_length(global.estrelinhas_col_temp); i++) 
            {
            	if (global.estrelinhas_col_temp[i].pega == true)
                {
                    global.estrelinhas_col[i].pega = true
                    global.estrelinhas_col_temp[i].pega = false
                }
            }
            
            
            room_goto(rm_lobby)
            
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






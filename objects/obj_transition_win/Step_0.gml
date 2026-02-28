switch (action) 
{

    case "lobby":
        
    {
        if (entrando)
        {
            img += img_vel
            global.in_transition = true
            toca_som(snd_confirm_save)
            
        
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
                
                if (global.cristais_temp != 0)
                {
                    global.cristais += global.cristais_temp
                }
                global.cristais_temp = 0
                
                if (global.cristais_temp != 0)
                {
                    global.cristais += global.cristais_temp
                }
                global.cristais_temp = 0
                
                if (room == rm_level_0)
                {
                    global.levels_liberados[0].concluido = true
                    global.levels_liberados[1].liberado = true
                } 
                else if (room == rm_level_1) 
                {
                    global.levels_liberados[1].concluido = true
                    global.levels_liberados[2].liberado = true 
                }
                else if (room == rm_level_2) 
                {
                    
                    global.levels_liberados[2].concluido = true
                    global.levels_liberados[3].liberado = true 
                }
                else if (room == rm_level_3)
                {
                    global.levels_liberados[3].concluido = true
                }
                
                salvar_jogo()
                
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
    break;

    case "main":
        
    {
        if (entrando)
        {
            img += img_vel
            global.in_transition = true
            toca_som(snd_exit_save)
        
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
                
                if (global.cristais_temp != 0)
                {
                    global.cristais += global.cristais_temp
                }
                global.cristais_temp = 0
                
                if (global.cristais_temp != 0)
                {
                    global.cristais += global.cristais_temp
                }
                global.cristais_temp = 0
                
                if (room == rm_level_0)
                {
                    global.levels_liberados[0].concluido = true
                    global.levels_liberados[1].liberado = true
                } 
                else if (room == rm_level_1) 
                {
                    global.levels_liberados[1].concluido = true
                    global.levels_liberados[2].liberado = true 
                }
                else if (room == rm_level_2) 
                {
                    
                    global.levels_liberados[2].concluido = true
                    global.levels_liberados[3].liberado = true 
                }
                else if (room == rm_level_3)
                {
                    global.levels_liberados[3].concluido = true
                }
                
                salvar_jogo()
                
                room_goto(rm_inicio)
                
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

    case "reset":
    {
        if (entrando)
        {
            img += img_vel
            global.in_transition = true
            toca_som(snd_confirm_save)
        
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
                
                if (global.cristais_temp != 0)
                {
                    global.cristais += global.cristais_temp
                }
                global.cristais_temp = 0
                
                if (room == rm_level_0)
                {
                    global.levels_liberados[0].concluido = true
                    global.levels_liberados[1].liberado = true
                } 
                else if (room == rm_level_1) 
                {
                    global.levels_liberados[1].concluido = true
                    global.levels_liberados[2].liberado = true 
                }
                else if (room == rm_level_2) 
                {
                    
                    global.levels_liberados[2].concluido = true
                    global.levels_liberados[3].liberado = true 
                }
                else if (room == rm_level_3)
                {
                    global.levels_liberados[3].concluido = true
                }
                
                salvar_jogo()
                
                room_restart()
                
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

    case "next":
    {
        if (entrando)
        {
            img += img_vel
            global.in_transition = true
            toca_som(snd_confirm_save)
        
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
                
                if (global.cristais_temp != 0)
                {
                    global.cristais += global.cristais_temp
                }
                global.cristais_temp = 0
                
                var _alvo = noone
                
                if (room == rm_level_0)
                {
                    global.levels_liberados[0].concluido = true
                    global.levels_liberados[1].liberado = true
                    _alvo = rm_level_1
                } 
                else if (room == rm_level_1) 
                {
                    global.levels_liberados[1].concluido = true
                    global.levels_liberados[2].liberado = true 
                    _alvo = rm_level_2
                }
                else if (room == rm_level_2) 
                {
                    
                    global.levels_liberados[2].concluido = true
                    global.levels_liberados[3].liberado = true 
                    _alvo = rm_level_3
                }
                else if (room == rm_level_3)
                {
                    global.levels_liberados[3].concluido = true
                }
                
                salvar_jogo()
                
                room_goto(_alvo)
                
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

    case "end":
    {
        if (entrando)
        {
            img += img_vel
            global.in_transition = true
            toca_som(snd_exit_save)
        
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
                
                if (global.cristais_temp != 0)
                {
                    global.cristais += global.cristais_temp
                }
                global.cristais_temp = 0
                
                if (room == rm_level_0)
                {
                    global.levels_liberados[0].concluido = true
                    global.levels_liberados[1].liberado = true
                } 
                else if (room == rm_level_1) 
                {
                    global.levels_liberados[1].concluido = true
                    global.levels_liberados[2].liberado = true 
                }
                else if (room == rm_level_2) 
                {
                    
                    global.levels_liberados[2].concluido = true
                    global.levels_liberados[3].liberado = true 
                }
                else if (room == rm_level_3)
                {
                    global.levels_liberados[3].concluido = true
                }
                
                salvar_jogo()
                
                entrando = false
                
            }
        }
        else 
        {
            game_end()
            img -= img_vel
            
            if (img < -5) 
            {
                global.in_transition = false
                instance_destroy()
            }
        }
    }
    break;
    
}






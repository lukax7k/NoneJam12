if (selection)
{
    //checa_mouse() 
    crescendo()
    
    confirm = keyboard_check(ord("E")) || keyboard_check(vk_enter)
    
}
else 
{
    image_xscale = lerp(image_xscale, 2, .3)	
}
if (confirm)
{
    if (!global.on_delete)
    {
        
        confirma_save() 
    }
    else 
    {
        if (timer_deleta > 0)
        {
            timer_deleta --
        }
        else 
        {
            
            
            
        	file_delete("saveteste" + string(global.ativo) + ".json" )
            
            global.ativo = 0
            
            timer_deleta = tempo_deleta
        }
    	
    }
    
}
else 
{
    timer_deleta = tempo_deleta	
}

if (global.ativo = save && !global.on_delete)
{
    image_index = 1
}
else 
{
	image_index = 0
}

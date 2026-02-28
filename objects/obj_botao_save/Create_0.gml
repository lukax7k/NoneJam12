selection = false


confirm = 0

tempo_deleta = 120
timer_deleta = tempo_deleta


//checa_mouse = function()
//{
    //if (position_meeting(mouse_x, mouse_y, id))
    //{
        //global.ativo = save
        //
    //}   
//}

crescendo = function()
{
    if (global.ativo == save)
    {
        image_xscale = lerp(image_xscale, 8, .3)
    }
    else 
    {
        image_xscale = lerp(image_xscale, 2, .3)	
    }
}

confirma_save = function()
{
    if (save = global.ativo)
    {
        global.save_atual = save
        
        selection = false
        global.trava_inicio = true
        
        carrega_jogo()
        
        
        var _transition = instance_create_layer(0, 0, "Transition", obj_transition_menu)
        _transition.action = "lobby"
    }
}
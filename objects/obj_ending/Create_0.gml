randomise()

toca_som(snd_lobby)

text = "Você salvou os dois mundos!"
text_2 = "Obrigado por jogar!"

tempo_loading = 240

passando_pro_level = function()
{
    if (tempo_loading > 0)
    {
        tempo_loading --
    }
    else 
    {
        if (keyboard_check_pressed(ord("E")))
        {
            var _transition = instance_create_layer(0, 0, "Transition", obj_transition_win)
            _transition.action = "lobby"
        }
    }
    
    
}
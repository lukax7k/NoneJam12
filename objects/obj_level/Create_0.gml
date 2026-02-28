global.mundo_invertido = false

global.artefato_1 = false

global.artefato_2 = false

global.primeiro_artefato = false

global.segundo_artefato = false

global.ganhou = false

global.pause = false

global.morreu = false

global.loja = false


fiz_minha_parte = false

if (!instance_exists(obj_menu))
{
    instance_create_layer(x, y, "Menu", obj_menu)
}

passando_level = function()
{
    if (global.segundo_artefato)
    {
        if (room != rm_tutorial)
        {
            fiz_minha_parte = true
            global.ganhou = true
        }
        else 
        {
        	var _transition = instance_create_layer(0, 0, "Transition", obj_transition_menu)
            _transition.action = "lobby"
        }
        
    }
}

if (room == rm_lobby || room == rm_tutorial) 
{
        
        poe_musica(snd_lobby)
    
}
else 
{
	
        tira_musica()
        poe_musica(snd_level)
    
}
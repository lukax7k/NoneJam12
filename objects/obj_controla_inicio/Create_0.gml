press_e = false

global.ativo = 0

global.on_delete = false

global.trava_inicio = true

if (audio_is_playing(snd_lobby) || audio_is_playing(snd_level))
{
    tira_musica()
    poe_musica(snd_inicio)
}
else 
{
	poe_musica(snd_inicio)
}


up = 0
down = 0
left = 0
right = 0

indo_pro_lado = function()
{
    if (!press_e)
    {
        if (keyboard_check_pressed(ord("E")))
        {
            if (instance_exists(obj_botao_save))
            {
               
                obj_botao_save.selection = true
            }
            
            toca_som(snd_inicio_e)
            x = 1104
            press_e = true
        }
    }
    else 
    {
    	if (keyboard_check(vk_escape))
        {
            if (instance_exists(obj_botao_save))
            {
                obj_botao_save.selection = false
                global.ativo = 0
            }
            toca_som(snd_inicio_esc)
            
            x = 0
            press_e = false
        }
    }
    
}

pega_input = function()
{
    up = keyboard_check_pressed(ord("W"))
    down = keyboard_check_pressed(ord("S"))
    left = keyboard_check_pressed(ord("A"))
    right = keyboard_check_pressed(ord("D"))
}

controla_save = function()
{
    if (press_e)
    {
        if (global.ativo > 1)
        {
            if (up) 
            {
                global.ativo --
                global.on_delete = false
                checa_estrelas()
                audio_play_sound(snd_menu_select, 0, 0)
            }
            
            
        }
        if (global.ativo < 3)
        {
            if (down) 
            {
                global.ativo ++
                global.on_delete = false
                checa_estrelas()
                audio_play_sound(snd_menu_select, 0, 0)
            }
            
        }
        if (global.ativo == 0)
        {
            if (up) 
            {
                global.ativo = 3
                global.on_delete = false
                checa_estrelas()
                audio_play_sound(snd_menu_select, 0, 0)
            }
            else if (down)
            {
                global.ativo = 1
                global.on_delete = false
                checa_estrelas()
                audio_play_sound(snd_menu_select, 0, 0)
            }
            
        }
        if (file_exists("saveteste" + string(global.ativo) + ".json"))
        {
            if (right)
            {
                global.on_delete = true
                audio_play_sound(snd_menu_select, 0, 0)
            } 
            if (left)
            {
                global.on_delete = false 
                audio_play_sound(snd_menu_select, 0, 0)
            } 
        }
        else 
        {
        	global.on_delete = false
        }
        
            
    }
}

instance_create_layer(0, 0, "Transition", obj_blackout)
image_xscale = .9
image_yscale = image_xscale

image_alpha = 0

menu_ativo = false;
fim_de_jogo = false;
in_lobby = false;

option = 1;

up = 0;
down = 0;

pega_input = function()
{
    up = keyboard_check_pressed(vk_up);
    down = keyboard_check_pressed(vk_down);
    confirm = keyboard_check_pressed(ord("E")) xor keyboard_check_pressed(vk_enter);
}

controla_menu_paused = function()
{
    if (up && option > 1)
    {
        option --;
    }
    if (down && option < 4)
    {
        option ++;
    }
    
    if (confirm)
    {
        switch (option) 
        {
        	case 1:
            {
                global.pause = false;
            }
            break;
        
            case 2:
            {
                var _transition = instance_create_layer(0, 0, "Transition", obj_transition_menu)
                _transition.action = "reset"
                global.pause = false;
            }
            break;
        
            case 3:
            {
                var _transition = instance_create_layer(0, 0, "Transition", obj_transition_menu)
                _transition.action = "lobby"
                global.pause = false;
            }
            break;
        
            case 4:
            {
                game_end()
            }
            break;
        } 
    }
}

controla_menu_lobby = function()
{
    if (up && option > 1)
    {
        option --;
    }
    if (down && option < 3)
    {
        option ++;
    }
    
    if (confirm)
    {
        switch (option) 
        {
        	case 1:
            {
                global.pause = false;
            }
            break;
        
            case 2:
            {
                
            }
            break;
        
            case 3:
            {
                game_end();
            }
            break;
        } 
    }
}

controla_menu_morto = function()
{
    if (up && option > 1)
    {
        option --;
    }
    if (down && option < 3)
    {
        option ++;
    }
    
    if (confirm)
    {
        switch (option) 
        {
        	case 1:
            {
                var _transition = instance_create_layer(0, 0, "Transition", obj_transition_menu)
                _transition.action = "reset"
                global.morreu = false;
            }
            break;
        
            case 2:
            {
                var _transition = instance_create_layer(0, 0, "Transition", obj_transition_menu)
                _transition.action = "lobby"
                global.morreu = false;
            }
            break;
        
            case 3:
            {
                game_end();
            }
            break;
        
            
        } 
    }
}

Abrir_menu = function()
{
    if (global.pause)
    {
        image_alpha = 1
    }
    else if (global.morreu)
    {
        image_alpha = 1
    }
    else 
    {
        image_alpha = 0
    }
}
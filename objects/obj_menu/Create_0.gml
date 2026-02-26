image_xscale = .9
image_yscale = image_xscale

image_alpha = 0

menu_ativo = false;
fim_de_jogo = false;
in_lobby = false;

option = 1;

up = 0;
down = 0;
confirm = 0
sair = 0

valor_vida = 120
            
            


pega_input = function()
{
    up = keyboard_check_pressed(ord("W"));
    down = keyboard_check_pressed(ord("S"));
    confirm = keyboard_check_pressed(ord("E")) xor keyboard_check_pressed(vk_enter);
    sair = keyboard_check_pressed(vk_escape)
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

controla_menu_win = function()
{
    if (room != rm_level_3)
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
                    var _transition = instance_create_layer(0, 0, "Transition", obj_transition_win)
                    _transition.action = "next"
                    global.ganhou = false
                }
                break;
            
                case 2:
                {
                    var _transition = instance_create_layer(0, 0, "Transition", obj_transition_win)
                    _transition.action = "lobby"
                    global.ganhou = false
                    
                }
                break;
            
                case 3:
                {
                    var _transition = instance_create_layer(0, 0, "Transition", obj_transition_win)
                    _transition.action = "reset"
                    global.ganhou = false
                    
                }
                break;
            
                case 4:
                {
                    var _transition = instance_create_layer(0, 0, "Transition", obj_transition_win)
                    _transition.action = "end"
                }
                break;
            } 
        }
    }
    else 
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
                    var _transition = instance_create_layer(0, 0, "Transition", obj_transition_win)
                    _transition.action = "lobby"
                    global.ganhou = false
                    
                }
                break;
            
                case 2:
                {
                    var _transition = instance_create_layer(0, 0, "Transition", obj_transition_win)
                    _transition.action = "reset"
                    global.ganhou = false
                    
                }
                break;
            
                case 3:
                {
                    var _transition = instance_create_layer(0, 0, "Transition", obj_transition_win)
                    _transition.action = "end"
                }
                break;
            } 
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

controla_menu_loja = function()
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
                if (global.cristais >= valor_vida && !global.vida_esgotada)
                {
                    global.cristais -= valor_vida
                    global.vida_player ++
                    obj_player.vida = global.vida_player
                }
                
            }
            break;
        
            case 2:
            {
                if (global.cristais >= 100 && !global.grav_esgotada)
                {
                    global.cristais -= 100
                    global.magias_totais[1].possui = true
                    global.grav_esgotada = true
                }
            } 
            break;
        
            case 3:
            {
                if (global.cristais >= 100 && !global.impulso_esgotada)
                {
                    global.cristais -= 100
                    global.magias_totais[2].possui = true
                    global.impulso_esgotada = true
                }
            }
            break;
        
            case 4:
            {
                global.loja = false
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
    else if (global.loja) 
    {
    	image_alpha = 1
    }
    else if (global.morreu)
    {
        
        image_alpha = 1
    }
    else if (global.ganhou)
    {
        image_alpha = 1
    }
    else 
    {
        image_alpha = 0
    }
}
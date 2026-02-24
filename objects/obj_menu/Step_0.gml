if (room == rm_lobby)
{
    in_lobby = true
}
else 
{
	in_lobby = false
}

if (global.vida_player == 4)
{
    valor_vida = 70
}
if (global.vida_player == 5)
{
    valor_vida = 80
}
if (global.vida_player == 6)
{
    valor_vida = 90
}
if (global.vida_player >= 7)
{
    global.vida_esgotada = true
}


Abrir_menu()

var _camx = camera_get_view_x(view_camera[0])
var _camy = camera_get_view_y(view_camera[0])

var _camw = camera_get_view_width(view_camera[0])
var _camh = camera_get_view_height(view_camera[0])

x = _camx + _camw/2
y = _camy + _camh/2

menu_ativo = global.pause xor global.loja;
fim_de_jogo = global.morreu;

if (menu_ativo)
{
    if (in_lobby)
    {
        if(!global.loja)
        {
            pega_input(); 
            controla_menu_lobby(); 
        }
        else 
        {
            if (image_alpha == 1)
            {
                pega_input();
            }
            
            controla_menu_loja();	
        }
        
    }
    else 
    {
        pega_input(); 
        controla_menu_paused(); 
    }
    
    
}
else if (fim_de_jogo)
{
    pega_input();
    controla_menu_morto();
}


if (sair)
{
    global.loja = false
    global.pause = false
}
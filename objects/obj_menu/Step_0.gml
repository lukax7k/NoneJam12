if (room == rm_lobby)
{
    in_lobby = true
}
else 
{
	in_lobby = false
}

Abrir_menu()

var _camx = camera_get_view_x(view_camera[0])
var _camy = camera_get_view_y(view_camera[0])

var _camw = camera_get_view_width(view_camera[0])
var _camh = camera_get_view_height(view_camera[0])

x = _camx + _camw/2
y = _camy + _camh/2

menu_ativo = global.pause;
fim_de_jogo = global.morreu;

if (menu_ativo)
{
    if (in_lobby)
    {
        pega_input(); 
        controla_menu_lobby(); 
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

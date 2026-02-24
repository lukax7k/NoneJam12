var _player = place_meeting(x, y, obj_player)



if (_player && !global.loja)
{
    if (!instance_exists(minha_caixa_dialogo))
    {
        minha_caixa_dialogo = instance_create_layer(x -20, y - 30, "Dialogo", obj_dialogo)
        minha_caixa_dialogo.image_alpha = 0.7
        minha_caixa_dialogo.image_xscale = 0.1
        
        minha_caixa_dialogo.texto = texto;
    }
}

else 
{
    if (instance_exists(minha_caixa_dialogo))
    {
        minha_caixa_dialogo.me_destruir = true; 

    }
}

if (_player)
{
    if (!global.pause)
    {
      if (keyboard_check_pressed(ord("E")))
        {
            if (instance_exists(obj_menu) && !global.loja)
            {
                obj_menu.option = 0
            }
            
            global.loja = true
            texto = choose("Volte sempre que precisar de alguma ajuda!", "Estarei sempre aqui pra fazer novos feitiços pra você!", "Boa sorte em suas aventuras!")
        }  
    }
    
}

var _player = place_meeting(x, y, obj_player)



if (_player)
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

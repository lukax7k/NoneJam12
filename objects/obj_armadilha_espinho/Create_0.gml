colisoes = [obj_player, obj_esfera_magica, obj_galho, obj_pedra_b]

checa_colisao = function()
{
    if (place_meeting(x, y, colisoes))
    {
        var espinho = instance_create_layer(x, y + 10, "Espinhos", obj_espinho)
        
        espinho.largura = image_xscale
        
        var _esfera = instance_place(x, y, obj_esfera_magica)
        
        if (_esfera != noone)
        {
            _esfera.insta_destroi()
        }
        
        instance_destroy()
    }
}
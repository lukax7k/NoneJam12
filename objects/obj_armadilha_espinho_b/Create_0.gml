colisoes = [obj_player, obj_galho, obj_pedra]

checa_colisao = function()
{
    if (place_meeting(x, y, colisoes))
    {
        var espinho = instance_create_layer(x, y + 10, "Espinhos", obj_espinho_b)
        
        espinho.largura = image_xscale
        
        instance_destroy()
    }
}
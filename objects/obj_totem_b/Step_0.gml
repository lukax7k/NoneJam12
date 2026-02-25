if (!global.mundo_invertido)
{
    atira_flecha()
    image_alpha = 1
    sprite_index = spr_totem
}
else 
{
    sprite_index = spr_colisao_vazia	
    image_alpha = 0
}


if (!global.artefato_1 && global.primeiro_artefato)
{
    meu_totem = obj_totem_2
}
else 
{
    meu_totem = obj_totem_1
}

if (global.artefato_1)
{
    image_alpha = 1
}
else 
{
    image_alpha = meu_totem.image_alpha	
}

if (global.artefato_1)
{
    sprite_index = sprite_normal
}

if (meu_totem == obj_totem_2)
{
    sprite_index = sprite_sorrindo
}

segue_player()

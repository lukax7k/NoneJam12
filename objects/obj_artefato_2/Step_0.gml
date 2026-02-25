if (!global.artefato_2 && global.primeiro_artefato)
{
    meu_totem = obj_totem_1
}
else 
{
    meu_totem = obj_totem_2
}

if (global.artefato_2)
{
    image_alpha = 1
}
else 
{
    image_alpha = meu_totem.image_alpha	
}

if (global.artefato_2)
{
    if (global.giro_foda)
    {
        sprite_index = spr_estrela_artefato_1_uau
    }
    else 
    {
    	sprite_index = sprite_normal
    }
}

if (meu_totem == obj_totem_1)
{
    sprite_index = sprite_feliz
}

segue_player()



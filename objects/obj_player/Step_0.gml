listando_magias()

if (global.pause) 
{
    image_speed = 0
}
else if (global.morreu)
{
    image_speed = 1
    morrendo()
}
else 
{ 
    if (global.in_transition)
    {
        entrando_portal()
    }
    else 
    { 
        if (saindo_portal)
        {
            image_alpha = 1
            troca_sprite(spr_player_portal_chegando)
            
            if (acabou_animacao())
            {
                saindo_portal = false
            }
        }
        else 
        {
            correndo()
            movimento()
            arruma_dir()
            pega_input()
            troca_mundos()
            contador_invencivel()
            maquina_de_estados()
            pega_artefato()
            escolhendo_magias()
            usando_magia()
        }
        
        
        
        
    }
    
}




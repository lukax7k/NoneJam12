listando_magias()

if (!global.segundo_artefato)
{
    if (global.pause) 
    {
        image_speed = 0
    }
    else if (global.morreu)
    {
        image_speed = 1
        morrendo()
    }
    else if (global.loja)
    {
        image_speed = 1
        velh = 0
        right = 0
        left = 0
        jump = 0
        down = 0
        maquina_de_estados()
        movimento()
        
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
                coyote_jump()
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
}
else 
{
    sprite_index = spr_player_idle
    image_speed = 1	
}





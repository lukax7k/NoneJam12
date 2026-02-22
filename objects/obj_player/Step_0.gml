if (global.pause || global.morreu) 
{
    image_speed = 0
    exit;
}
else 
{ 
    if (global.in_transition)
    {
        entrando_portal()
    }
    else 
    { 
        image_alpha = 1
        correndo()
        movimento()
        pega_input()
        troca_mundos()
        contador_invencivel()
        maquina_de_estados()
        pega_artefato()
    }
    
}



